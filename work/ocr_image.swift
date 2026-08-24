import Foundation
import Vision
import AppKit

if CommandLine.arguments.count < 2 {
    fputs("usage: ocr_image.swift <image>\n", stderr)
    exit(2)
}

let imageURL = URL(fileURLWithPath: CommandLine.arguments[1])
guard let image = NSImage(contentsOf: imageURL),
      let tiff = image.tiffRepresentation,
      let bitmap = NSBitmapImageRep(data: tiff),
      let cgImage = bitmap.cgImage else {
    fputs("failed to load image\n", stderr)
    exit(1)
}

let request = VNRecognizeTextRequest { request, error in
    if let error = error {
        fputs("ocr error: \(error)\n", stderr)
        exit(1)
    }

    let observations = (request.results as? [VNRecognizedTextObservation]) ?? []
    for observation in observations {
        guard let candidate = observation.topCandidates(1).first else { continue }
        let box = observation.boundingBox
        let line = String(
            format: "%.4f\t%.4f\t%.4f\t%.4f\t%.3f\t%@",
            box.minX,
            box.minY,
            box.width,
            box.height,
            candidate.confidence,
            candidate.string
        )
        print(line)
    }
}

request.recognitionLevel = .accurate
request.recognitionLanguages = ["zh-Hans", "en-US"]
request.usesLanguageCorrection = true

let handler = VNImageRequestHandler(cgImage: cgImage, options: [:])
try handler.perform([request])
