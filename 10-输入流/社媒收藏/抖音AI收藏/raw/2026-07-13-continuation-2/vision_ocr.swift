import Foundation
import Vision
import AppKit

guard CommandLine.arguments.count >= 2 else {
    fputs("usage: vision_ocr.swift image...\n", stderr)
    exit(2)
}

let request = VNRecognizeTextRequest()
request.recognitionLevel = .accurate
request.usesLanguageCorrection = true
request.recognitionLanguages = ["zh-Hans", "en-US"]

for imagePath in CommandLine.arguments.dropFirst() {
    guard let image = NSImage(contentsOfFile: imagePath),
          let cgImage = image.cgImage(forProposedRect: nil, context: nil, hints: nil) else {
        fputs("cannot load image: \(imagePath)\n", stderr)
        continue
    }

    let handler = VNImageRequestHandler(cgImage: cgImage, options: [:])
    do {
        try handler.perform([request])
    } catch {
        fputs("ocr failed for \(imagePath): \(error)\n", stderr)
        continue
    }

    let observations = (request.results ?? [])
        .compactMap { obs -> (CGRect, String, Float)? in
            guard let candidate = obs.topCandidates(1).first else { return nil }
            return (obs.boundingBox, candidate.string, candidate.confidence)
        }
        .sorted {
            if abs($0.0.minY - $1.0.minY) > 0.01 {
                return $0.0.minY > $1.0.minY
            }
            return $0.0.minX < $1.0.minX
        }

    for (box, text, confidence) in observations {
        print("\(imagePath)\t\(String(format: "%.4f", box.minX))\t\(String(format: "%.4f", box.minY))\t\(String(format: "%.4f", box.width))\t\(String(format: "%.4f", box.height))\t\(String(format: "%.3f", confidence))\t\(text)")
    }
}
