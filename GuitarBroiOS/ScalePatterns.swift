//
//  ScalePatterns.swift
//  GuitarBroiOS
//
//  Created by Dustin Johns on 4/24/22.
//

import Foundation

enum chromaticScale : Int
{
    case A = 1
    case AS = 2
    case B = 3
    case C = 4
    case CS = 5
    case D = 6
    case DS = 7
    case E = 8
    case F = 9
    case FS = 10
    case G = 11
    case GS = 12
}

// Minor Pentatonic Pattern - 3,2,2,3 (semitones)
func pentatonicMinorScalePatternForKey(note: chromaticScale) -> [chromaticScale]
{
    var scalePattern: [chromaticScale] = Array(repeating: note, count: 5)
    var nextStep = note
    
    for i in 0...4
    {
        if( i == 0)
        {
            scalePattern.remove(at: i)
            scalePattern.insert(note, at: i)
        }
        else if ( i == 2 || i == 3) // 2 semitones
        {
            nextStep = findNextInterval(interval: 2, note: nextStep)
            scalePattern.remove(at: i)
            scalePattern.insert(nextStep, at: i)
        }
        else // 3 semitones
        {
            nextStep = findNextInterval(interval: 3, note: nextStep)
            scalePattern.remove(at: i)
            scalePattern.insert(nextStep, at: i)
        }
    }
    return scalePattern
}
// Major Pentatonic Pattern - 2,2,3,2 (semitones)
func pentatonicMajorScalePatternForKey(note: chromaticScale) -> [chromaticScale]
{
    var scalePattern: [chromaticScale] = Array(repeating: note, count: 5)
    var nextStep = note
    
    for i in 0...4
    {
        if( i == 0)
        {
            scalePattern.remove(at: i)
            scalePattern.insert(note, at: i)
        }
        else if ( i == 3 ) // 3 semitones
        {
            nextStep = findNextInterval(interval: 3, note: nextStep)
            scalePattern.remove(at: i)
            scalePattern.insert(nextStep, at: i)
        }
        else // 2 semitones
        {
            nextStep = findNextInterval(interval: 2, note: nextStep)
            scalePattern.remove(at: i)
            scalePattern.insert(nextStep, at: i)
        }
    }
    return scalePattern
}

// MinorScalePattern - whole, half, whole, whole, half, whole, whole
func minorScalePatternForKey(note: chromaticScale) -> [chromaticScale]
{
    var scalePattern: [chromaticScale] = Array(repeating: note, count: 7)
    var nextStep = note
    
    for i in 0...6
    {
        if( i == 0)
        {
            scalePattern.remove(at: i)
            scalePattern.insert(note, at: i)
        }
        else if ( i == 2 || i == 5) // 1 semitone
        {
            nextStep = findNextInterval(interval: 1, note: nextStep)
            scalePattern.remove(at: i)
            scalePattern.insert(nextStep, at: i)
        }
        else // 2 semitones
        {
            nextStep = findNextInterval(interval: 2, note: nextStep)
            scalePattern.remove(at: i)
            scalePattern.insert(nextStep, at: i)
        }
    }
    
    return scalePattern
}

// Major Scale Pattern: whole, whole, half, whole, whole, whole, half
func majorScalePatternForKey(note: chromaticScale) -> [chromaticScale]
{
    var scalePattern: [chromaticScale] = Array(repeating: note, count: 7)
    var nextStep = note
    
    for i in 0...6
    {
        if(i == 0)
        {
            scalePattern.remove(at: i)
            scalePattern.insert(note, at: i)
        }
        else if ( i == 3 || i == 7) // 1 semitone
        {
            nextStep = findNextInterval(interval: 1, note: nextStep)
            scalePattern.remove(at: i)
            scalePattern.insert(nextStep, at: i)
        }
        else // 2 semitones
        {
            nextStep = findNextInterval(interval: 2, note: nextStep)
            scalePattern.remove(at: i)
            scalePattern.insert(nextStep, at: i)
        }
    }
    
    return scalePattern
}
// Minor Blues Pattern - 3,2,1,1,3 (semitones)
func bluesMinorScalePatternForKey(note: chromaticScale) -> [chromaticScale]
{
    var scalePattern: [chromaticScale] = Array(repeating: note, count: 6)
    var nextStep = note
    
    for i in 0...5
    {
        if( i == 0)
        {
            scalePattern.remove(at: i)
            scalePattern.insert(note, at: i)
        }
        else if ( i == 3 || i == 4) // 1 semitone
        {
            nextStep = findNextInterval(interval: 1, note: nextStep)
            scalePattern.remove(at: i)
            scalePattern.insert(nextStep, at: i)
        }
        else if ( i == 2 ) // 2 semitones
        {
            nextStep = findNextInterval(interval: 2, note: nextStep)
            scalePattern.remove(at: i)
            scalePattern.insert(nextStep, at: i)
        }
        else // 3 semitones
        {
            nextStep = findNextInterval(interval: 3, note: nextStep)
            scalePattern.remove(at: i)
            scalePattern.insert(nextStep, at: i)
        }
    }
    return scalePattern
}
// Major Blues Pattern - 2,1,1,3,2 (semitones)
func bluesMajorScalePatternForKey(note: chromaticScale) -> [chromaticScale]
{
    var scalePattern: [chromaticScale] = Array(repeating: note, count: 6)
    var nextStep = note
    
    for i in 0...5
    {
        if( i == 0)
        {
            scalePattern.remove(at: i)
            scalePattern.insert(note, at: i)
        }
        else if ( i == 2 || i == 3) // 1 semitone
        {
            nextStep = findNextInterval(interval: 1, note: nextStep)
            scalePattern.remove(at: i)
            scalePattern.insert(nextStep, at: i)
        }
        else if ( i == 1 || i == 5 ) // 2 semitones
        {
            nextStep = findNextInterval(interval: 2, note: nextStep)
            scalePattern.remove(at: i)
            scalePattern.insert(nextStep, at: i)
        }
        else // 3 semitones
        {
            nextStep = findNextInterval(interval: 3, note: nextStep)
            scalePattern.remove(at: i)
            scalePattern.insert(nextStep, at: i)
        }
    }
    return scalePattern
}

// Whenever an interval goes past 12 notes, cycle back to the beginning of the chromatic scale
func findNextInterval(interval: Int, note: chromaticScale) -> chromaticScale
{
    var noteValue = note.rawValue
    noteValue = noteValue + interval
    if(noteValue > 12)
    {
        noteValue = noteValue - 12
    }
    
    let nextNote = chromaticScale.init(rawValue: noteValue)
    return nextNote!
}

func scaleValue(scaleChar: String) -> chromaticScale
{
    var note = chromaticScale.A
    
    switch(scaleChar)
    {
        case "A": note = chromaticScale.A; break;
        case "A#": note = chromaticScale.AS; break;
        case "B": note = chromaticScale.B; break;
        case "C": note = chromaticScale.C; break;
        case "C#": note = chromaticScale.CS; break;
        case "D": note = chromaticScale.D; break;
        case "D#": note = chromaticScale.DS; break;
        case "E": note = chromaticScale.E; break;
        case "F": note = chromaticScale.F; break;
        case "F#": note = chromaticScale.FS; break;
        case "G": note = chromaticScale.G; break;
        case "G#": note = chromaticScale.GS; break;
        default: break;
    }
    
    return note
}
