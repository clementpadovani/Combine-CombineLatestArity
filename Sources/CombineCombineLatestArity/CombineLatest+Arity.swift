//
//  CombineLatest+Arity.swift
//  CombineCombineLatestArity
//

import Foundation
import Combine

@available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public extension Publisher {
    /// Subscribes to four additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and three other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher>(_ a: A,
                                                                               _ b: B,
                                                                               _ c: C,
                                                                               _ d: D) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure {

        return combineLatest(a,
                             b,
                             c)
            .combineLatest(d) { (lhs, d) -> (Output, A.Output, B.Output, C.Output, D.Output) in
                let (selfOutput, a, b, c) = lhs

                return (selfOutput, a, b, c, d)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to five additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and four other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher>(_ a: A,
                                                                                             _ b: B,
                                                                                             _ c: C,
                                                                                             _ d: D,
                                                                                             _ e: E) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure {

        return combineLatest(a,
                             b,
                             c,
                             d)
            .combineLatest(e) { (lhs, e) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output) in
                let (selfOutput, a, b, c, d) = lhs

                return (selfOutput, a, b, c, d, e)
            }
            .eraseToAnyPublisher()
    }


    /// Subscribes to six additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and five other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher>(_ a: A,
                                                                                                           _ b: B,
                                                                                                           _ c: C,
                                                                                                           _ d: D,
                                                                                                           _ e: E,
                                                                                                           _ f: F) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e)
            .combineLatest(f) { (lhs, f) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output) in
                let (selfOutput, a, b, c, d, e) = lhs

                return (selfOutput, a, b, c, d, e, f)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to seven additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and six other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher>(_ a: A,
                                                                                                                         _ b: B,
                                                                                                                         _ c: C,
                                                                                                                         _ d: D,
                                                                                                                         _ e: E,
                                                                                                                         _ f: F,
                                                                                                                         _ g: G) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f)
            .combineLatest(g) { (lhs, g) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output) in
                let (selfOutput, a, b, c, d, e, f) = lhs

                return (selfOutput, a, b, c, d, e, f, g)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to eight additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and seven other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher>(_ a: A,
                                                                                                                                       _ b: B,
                                                                                                                                       _ c: C,
                                                                                                                                       _ d: D,
                                                                                                                                       _ e: E,
                                                                                                                                       _ f: F,
                                                                                                                                       _ g: G,
                                                                                                                                       _ h: H) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g)
            .combineLatest(h) { (lhs, h) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output) in
                let (selfOutput, a, b, c, d, e, f, g) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to nine additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and eight other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher>(_ a: A,
                                                                                                                                                     _ b: B,
                                                                                                                                                     _ c: C,
                                                                                                                                                     _ d: D,
                                                                                                                                                     _ e: E,
                                                                                                                                                     _ f: F,
                                                                                                                                                     _ g: G,
                                                                                                                                                     _ h: H,
                                                                                                                                                     _ i: I) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h)
            .combineLatest(i) { (lhs, i) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to ten additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and nine other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher>(_ a: A,
                                                                                                                                                                   _ b: B,
                                                                                                                                                                   _ c: C,
                                                                                                                                                                   _ d: D,
                                                                                                                                                                   _ e: E,
                                                                                                                                                                   _ f: F,
                                                                                                                                                                   _ g: G,
                                                                                                                                                                   _ h: H,
                                                                                                                                                                   _ i: I,
                                                                                                                                                                   _ j: J) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i)
            .combineLatest(j) { (lhs, j) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to eleven additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and ten other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher>(_ a: A,
                                                                                                                                                                                 _ b: B,
                                                                                                                                                                                 _ c: C,
                                                                                                                                                                                 _ d: D,
                                                                                                                                                                                 _ e: E,
                                                                                                                                                                                 _ f: F,
                                                                                                                                                                                 _ g: G,
                                                                                                                                                                                 _ h: H,
                                                                                                                                                                                 _ i: I,
                                                                                                                                                                                 _ j: J,
                                                                                                                                                                                 _ k: K) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j)
            .combineLatest(k) { (lhs, k) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to twelve additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    ///   - publisher11: A twelfth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and eleven other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher, L: Publisher>(_ a: A,
                                                                                                                                                                                               _ b: B,
                                                                                                                                                                                               _ c: C,
                                                                                                                                                                                               _ d: D,
                                                                                                                                                                                               _ e: E,
                                                                                                                                                                                               _ f: F,
                                                                                                                                                                                               _ g: G,
                                                                                                                                                                                               _ h: H,
                                                                                                                                                                                               _ i: I,
                                                                                                                                                                                               _ j: J,
                                                                                                                                                                                               _ k: K,
                                                                                                                                                                                               _ l: L) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure, Failure == L.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j,
                             k)
            .combineLatest(l) { (lhs, l) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to thirteen additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    ///   - publisher11: A twelfth publisher to combine with the first publisher.
    ///   - publisher12: A thirteenth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and twelve other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher, L: Publisher, M: Publisher>(_ a: A,
                                                                                                                                                                                                             _ b: B,
                                                                                                                                                                                                             _ c: C,
                                                                                                                                                                                                             _ d: D,
                                                                                                                                                                                                             _ e: E,
                                                                                                                                                                                                             _ f: F,
                                                                                                                                                                                                             _ g: G,
                                                                                                                                                                                                             _ h: H,
                                                                                                                                                                                                             _ i: I,
                                                                                                                                                                                                             _ j: J,
                                                                                                                                                                                                             _ k: K,
                                                                                                                                                                                                             _ l: L,
                                                                                                                                                                                                             _ m: M) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output), Failure>  where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure, Failure == L.Failure, Failure == M.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j,
                             k,
                             l)
            .combineLatest(m) { (lhs, m) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to fourteen additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    ///   - publisher11: A twelfth publisher to combine with the first publisher.
    ///   - publisher12: A thirteenth publisher to combine with the first publisher.
    ///   - publisher13: A fourteenth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and thirteen other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher, L: Publisher, M: Publisher, N: Publisher>(_ a: A,
                                                                                                                                                                                                                           _ b: B,
                                                                                                                                                                                                                           _ c: C,
                                                                                                                                                                                                                           _ d: D,
                                                                                                                                                                                                                           _ e: E,
                                                                                                                                                                                                                           _ f: F,
                                                                                                                                                                                                                           _ g: G,
                                                                                                                                                                                                                           _ h: H,
                                                                                                                                                                                                                           _ i: I,
                                                                                                                                                                                                                           _ j: J,
                                                                                                                                                                                                                           _ k: K,
                                                                                                                                                                                                                           _ l: L,
                                                                                                                                                                                                                           _ m: M,
                                                                                                                                                                                                                           _ n: N) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output), Failure>  where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure, Failure == L.Failure, Failure == M.Failure, Failure == N.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j,
                             k,
                             l,
                             m)
            .combineLatest(n) { (lhs, n) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to fifteen additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    ///   - publisher11: A twelfth publisher to combine with the first publisher.
    ///   - publisher12: A thirteenth publisher to combine with the first publisher.
    ///   - publisher13: A fourteenth publisher to combine with the first publisher.
    ///   - publisher14: A fifteenth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and fourteen other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher, L: Publisher, M: Publisher, N: Publisher, O: Publisher>(_ a: A,
                                                                                                                                                                                                                                         _ b: B,
                                                                                                                                                                                                                                         _ c: C,
                                                                                                                                                                                                                                         _ d: D,
                                                                                                                                                                                                                                         _ e: E,
                                                                                                                                                                                                                                         _ f: F,
                                                                                                                                                                                                                                         _ g: G,
                                                                                                                                                                                                                                         _ h: H,
                                                                                                                                                                                                                                         _ i: I,
                                                                                                                                                                                                                                         _ j: J,
                                                                                                                                                                                                                                         _ k: K,
                                                                                                                                                                                                                                         _ l: L,
                                                                                                                                                                                                                                         _ m: M,
                                                                                                                                                                                                                                         _ n: N,
                                                                                                                                                                                                                                         _ o: O) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure, Failure == L.Failure, Failure == M.Failure, Failure == N.Failure, Failure == O.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j,
                             k,
                             l,
                             m,
                             n)
            .combineLatest(o) { (lhs, o) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to sixteen additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    ///   - publisher11: A twelfth publisher to combine with the first publisher.
    ///   - publisher12: A thirteenth publisher to combine with the first publisher.
    ///   - publisher13: A fourteenth publisher to combine with the first publisher.
    ///   - publisher14: A fifteenth publisher to combine with the first publisher.
    ///   - publisher15: A sixteenth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and fifteen other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher, L: Publisher, M: Publisher, N: Publisher, O: Publisher, P: Publisher>(_ a: A,
                                                                                                                                                                                                                                                       _ b: B,
                                                                                                                                                                                                                                                       _ c: C,
                                                                                                                                                                                                                                                       _ d: D,
                                                                                                                                                                                                                                                       _ e: E,
                                                                                                                                                                                                                                                       _ f: F,
                                                                                                                                                                                                                                                       _ g: G,
                                                                                                                                                                                                                                                       _ h: H,
                                                                                                                                                                                                                                                       _ i: I,
                                                                                                                                                                                                                                                       _ j: J,
                                                                                                                                                                                                                                                       _ k: K,
                                                                                                                                                                                                                                                       _ l: L,
                                                                                                                                                                                                                                                       _ m: M,
                                                                                                                                                                                                                                                       _ n: N,
                                                                                                                                                                                                                                                       _ o: O,
                                                                                                                                                                                                                                                       _ p: P) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output), Failure>  where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure, Failure == L.Failure, Failure == M.Failure, Failure == N.Failure, Failure == O.Failure, Failure == P.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j,
                             k,
                             l,
                             m,
                             n,
                             o)
            .combineLatest(p) { (lhs, p) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to seventeen additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    ///   - publisher11: A twelfth publisher to combine with the first publisher.
    ///   - publisher12: A thirteenth publisher to combine with the first publisher.
    ///   - publisher13: A fourteenth publisher to combine with the first publisher.
    ///   - publisher14: A fifteenth publisher to combine with the first publisher.
    ///   - publisher15: A sixteenth publisher to combine with the first publisher.
    ///   - publisher16: A seventeenth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and sixteen other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher, L: Publisher, M: Publisher, N: Publisher, O: Publisher, P: Publisher, Q: Publisher>(_ a: A,
                                                                                                                                                                                                                                                                     _ b: B,
                                                                                                                                                                                                                                                                     _ c: C,
                                                                                                                                                                                                                                                                     _ d: D,
                                                                                                                                                                                                                                                                     _ e: E,
                                                                                                                                                                                                                                                                     _ f: F,
                                                                                                                                                                                                                                                                     _ g: G,
                                                                                                                                                                                                                                                                     _ h: H,
                                                                                                                                                                                                                                                                     _ i: I,
                                                                                                                                                                                                                                                                     _ j: J,
                                                                                                                                                                                                                                                                     _ k: K,
                                                                                                                                                                                                                                                                     _ l: L,
                                                                                                                                                                                                                                                                     _ m: M,
                                                                                                                                                                                                                                                                     _ n: N,
                                                                                                                                                                                                                                                                     _ o: O,
                                                                                                                                                                                                                                                                     _ p: P,
                                                                                                                                                                                                                                                                     _ q: Q) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure, Failure == L.Failure, Failure == M.Failure, Failure == N.Failure, Failure == O.Failure, Failure == P.Failure, Failure == Q.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j,
                             k,
                             l,
                             m,
                             n,
                             o,
                             p)
            .combineLatest(q) { (lhs, q) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to eighteen additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    ///   - publisher11: A twelfth publisher to combine with the first publisher.
    ///   - publisher12: A thirteenth publisher to combine with the first publisher.
    ///   - publisher13: A fourteenth publisher to combine with the first publisher.
    ///   - publisher14: A fifteenth publisher to combine with the first publisher.
    ///   - publisher15: A sixteenth publisher to combine with the first publisher.
    ///   - publisher16: A seventeenth publisher to combine with the first publisher.
    ///   - publisher17: A eighteenth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and seventeen other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher, L: Publisher, M: Publisher, N: Publisher, O: Publisher, P: Publisher, Q: Publisher, R: Publisher>(_ a: A,
                                                                                                                                                                                                                                                                                   _ b: B,
                                                                                                                                                                                                                                                                                   _ c: C,
                                                                                                                                                                                                                                                                                   _ d: D,
                                                                                                                                                                                                                                                                                   _ e: E,
                                                                                                                                                                                                                                                                                   _ f: F,
                                                                                                                                                                                                                                                                                   _ g: G,
                                                                                                                                                                                                                                                                                   _ h: H,
                                                                                                                                                                                                                                                                                   _ i: I,
                                                                                                                                                                                                                                                                                   _ j: J,
                                                                                                                                                                                                                                                                                   _ k: K,
                                                                                                                                                                                                                                                                                   _ l: L,
                                                                                                                                                                                                                                                                                   _ m: M,
                                                                                                                                                                                                                                                                                   _ n: N,
                                                                                                                                                                                                                                                                                   _ o: O,
                                                                                                                                                                                                                                                                                   _ p: P,
                                                                                                                                                                                                                                                                                   _ q: Q,
                                                                                                                                                                                                                                                                                   _ r: R) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure, Failure == L.Failure, Failure == M.Failure, Failure == N.Failure, Failure == O.Failure, Failure == P.Failure, Failure == Q.Failure, Failure == R.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j,
                             k,
                             l,
                             m,
                             n,
                             o,
                             p,
                             q)
            .combineLatest(r) { (lhs, r) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to nineteen additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    ///   - publisher11: A twelfth publisher to combine with the first publisher.
    ///   - publisher12: A thirteenth publisher to combine with the first publisher.
    ///   - publisher13: A fourteenth publisher to combine with the first publisher.
    ///   - publisher14: A fifteenth publisher to combine with the first publisher.
    ///   - publisher15: A sixteenth publisher to combine with the first publisher.
    ///   - publisher16: A seventeenth publisher to combine with the first publisher.
    ///   - publisher17: A eighteenth publisher to combine with the first publisher.
    ///   - publisher18: A nineteenth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and eighteen other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher, L: Publisher, M: Publisher, N: Publisher, O: Publisher, P: Publisher, Q: Publisher, R: Publisher, S: Publisher>(_ a: A,
                                                                                                                                                                                                                                                                                                 _ b: B,
                                                                                                                                                                                                                                                                                                 _ c: C,
                                                                                                                                                                                                                                                                                                 _ d: D,
                                                                                                                                                                                                                                                                                                 _ e: E,
                                                                                                                                                                                                                                                                                                 _ f: F,
                                                                                                                                                                                                                                                                                                 _ g: G,
                                                                                                                                                                                                                                                                                                 _ h: H,
                                                                                                                                                                                                                                                                                                 _ i: I,
                                                                                                                                                                                                                                                                                                 _ j: J,
                                                                                                                                                                                                                                                                                                 _ k: K,
                                                                                                                                                                                                                                                                                                 _ l: L,
                                                                                                                                                                                                                                                                                                 _ m: M,
                                                                                                                                                                                                                                                                                                 _ n: N,
                                                                                                                                                                                                                                                                                                 _ o: O,
                                                                                                                                                                                                                                                                                                 _ p: P,
                                                                                                                                                                                                                                                                                                 _ q: Q,
                                                                                                                                                                                                                                                                                                 _ r: R,
                                                                                                                                                                                                                                                                                                 _ s: S) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure, Failure == L.Failure, Failure == M.Failure, Failure == N.Failure, Failure == O.Failure, Failure == P.Failure, Failure == Q.Failure, Failure == R.Failure, Failure == S.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j,
                             k,
                             l,
                             m,
                             n,
                             o,
                             p,
                             q,
                             r)
            .combineLatest(s) { (lhs, s) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to twenty additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    ///   - publisher11: A twelfth publisher to combine with the first publisher.
    ///   - publisher12: A thirteenth publisher to combine with the first publisher.
    ///   - publisher13: A fourteenth publisher to combine with the first publisher.
    ///   - publisher14: A fifteenth publisher to combine with the first publisher.
    ///   - publisher15: A sixteenth publisher to combine with the first publisher.
    ///   - publisher16: A seventeenth publisher to combine with the first publisher.
    ///   - publisher17: A eighteenth publisher to combine with the first publisher.
    ///   - publisher18: A nineteenth publisher to combine with the first publisher.
    ///   - publisher19: A twentieth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and nineteen other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher, L: Publisher, M: Publisher, N: Publisher, O: Publisher, P: Publisher, Q: Publisher, R: Publisher, S: Publisher, T: Publisher>(_ a: A,
                                                                                                                                                                                                                                                                                                               _ b: B,
                                                                                                                                                                                                                                                                                                               _ c: C,
                                                                                                                                                                                                                                                                                                               _ d: D,
                                                                                                                                                                                                                                                                                                               _ e: E,
                                                                                                                                                                                                                                                                                                               _ f: F,
                                                                                                                                                                                                                                                                                                               _ g: G,
                                                                                                                                                                                                                                                                                                               _ h: H,
                                                                                                                                                                                                                                                                                                               _ i: I,
                                                                                                                                                                                                                                                                                                               _ j: J,
                                                                                                                                                                                                                                                                                                               _ k: K,
                                                                                                                                                                                                                                                                                                               _ l: L,
                                                                                                                                                                                                                                                                                                               _ m: M,
                                                                                                                                                                                                                                                                                                               _ n: N,
                                                                                                                                                                                                                                                                                                               _ o: O,
                                                                                                                                                                                                                                                                                                               _ p: P,
                                                                                                                                                                                                                                                                                                               _ q: Q,
                                                                                                                                                                                                                                                                                                               _ r: R,
                                                                                                                                                                                                                                                                                                               _ s: S,
                                                                                                                                                                                                                                                                                                               _ t: T) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure, Failure == L.Failure, Failure == M.Failure, Failure == N.Failure, Failure == O.Failure, Failure == P.Failure, Failure == Q.Failure, Failure == R.Failure, Failure == S.Failure, Failure == T.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j,
                             k,
                             l,
                             m,
                             n,
                             o,
                             p,
                             q,
                             r,
                             s)
            .combineLatest(t) { (lhs, t) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to twenty-one additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    ///   - publisher11: A twelfth publisher to combine with the first publisher.
    ///   - publisher12: A thirteenth publisher to combine with the first publisher.
    ///   - publisher13: A fourteenth publisher to combine with the first publisher.
    ///   - publisher14: A fifteenth publisher to combine with the first publisher.
    ///   - publisher15: A sixteenth publisher to combine with the first publisher.
    ///   - publisher16: A seventeenth publisher to combine with the first publisher.
    ///   - publisher17: A eighteenth publisher to combine with the first publisher.
    ///   - publisher18: A nineteenth publisher to combine with the first publisher.
    ///   - publisher19: A twentieth publisher to combine with the first publisher.
    ///   - publisher20: A twenty-first publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and twenty other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher, L: Publisher, M: Publisher, N: Publisher, O: Publisher, P: Publisher, Q: Publisher, R: Publisher, S: Publisher, T: Publisher, U: Publisher>(_ a: A,
                                                                                                                                                                                                                                                                                                                             _ b: B,
                                                                                                                                                                                                                                                                                                                             _ c: C,
                                                                                                                                                                                                                                                                                                                             _ d: D,
                                                                                                                                                                                                                                                                                                                             _ e: E,
                                                                                                                                                                                                                                                                                                                             _ f: F,
                                                                                                                                                                                                                                                                                                                             _ g: G,
                                                                                                                                                                                                                                                                                                                             _ h: H,
                                                                                                                                                                                                                                                                                                                             _ i: I,
                                                                                                                                                                                                                                                                                                                             _ j: J,
                                                                                                                                                                                                                                                                                                                             _ k: K,
                                                                                                                                                                                                                                                                                                                             _ l: L,
                                                                                                                                                                                                                                                                                                                             _ m: M,
                                                                                                                                                                                                                                                                                                                             _ n: N,
                                                                                                                                                                                                                                                                                                                             _ o: O,
                                                                                                                                                                                                                                                                                                                             _ p: P,
                                                                                                                                                                                                                                                                                                                             _ q: Q,
                                                                                                                                                                                                                                                                                                                             _ r: R,
                                                                                                                                                                                                                                                                                                                             _ s: S,
                                                                                                                                                                                                                                                                                                                             _ t: T,
                                                                                                                                                                                                                                                                                                                             _ u: U) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure, Failure == L.Failure, Failure == M.Failure, Failure == N.Failure, Failure == O.Failure, Failure == P.Failure, Failure == Q.Failure, Failure == R.Failure, Failure == S.Failure, Failure == T.Failure, Failure == U.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j,
                             k,
                             l,
                             m,
                             n,
                             o,
                             p,
                             q,
                             r,
                             s,
                             t)
            .combineLatest(u) { (lhs, u) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to twenty-two additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    ///   - publisher11: A twelfth publisher to combine with the first publisher.
    ///   - publisher12: A thirteenth publisher to combine with the first publisher.
    ///   - publisher13: A fourteenth publisher to combine with the first publisher.
    ///   - publisher14: A fifteenth publisher to combine with the first publisher.
    ///   - publisher15: A sixteenth publisher to combine with the first publisher.
    ///   - publisher16: A seventeenth publisher to combine with the first publisher.
    ///   - publisher17: A eighteenth publisher to combine with the first publisher.
    ///   - publisher18: A nineteenth publisher to combine with the first publisher.
    ///   - publisher19: A twentieth publisher to combine with the first publisher.
    ///   - publisher20: A twenty-first publisher to combine with the first publisher.
    ///   - publisher21: A twenty-second publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and twenty-one other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher, L: Publisher, M: Publisher, N: Publisher, O: Publisher, P: Publisher, Q: Publisher, R: Publisher, S: Publisher, T: Publisher, U: Publisher, V: Publisher>(_ a: A,
                                                                                                                                                                                                                                                                                                                                           _ b: B,
                                                                                                                                                                                                                                                                                                                                           _ c: C,
                                                                                                                                                                                                                                                                                                                                           _ d: D,
                                                                                                                                                                                                                                                                                                                                           _ e: E,
                                                                                                                                                                                                                                                                                                                                           _ f: F,
                                                                                                                                                                                                                                                                                                                                           _ g: G,
                                                                                                                                                                                                                                                                                                                                           _ h: H,
                                                                                                                                                                                                                                                                                                                                           _ i: I,
                                                                                                                                                                                                                                                                                                                                           _ j: J,
                                                                                                                                                                                                                                                                                                                                           _ k: K,
                                                                                                                                                                                                                                                                                                                                           _ l: L,
                                                                                                                                                                                                                                                                                                                                           _ m: M,
                                                                                                                                                                                                                                                                                                                                           _ n: N,
                                                                                                                                                                                                                                                                                                                                           _ o: O,
                                                                                                                                                                                                                                                                                                                                           _ p: P,
                                                                                                                                                                                                                                                                                                                                           _ q: Q,
                                                                                                                                                                                                                                                                                                                                           _ r: R,
                                                                                                                                                                                                                                                                                                                                           _ s: S,
                                                                                                                                                                                                                                                                                                                                           _ t: T,
                                                                                                                                                                                                                                                                                                                                           _ u: U,
                                                                                                                                                                                                                                                                                                                                           _ v: V) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure, Failure == L.Failure, Failure == M.Failure, Failure == N.Failure, Failure == O.Failure, Failure == P.Failure, Failure == Q.Failure, Failure == R.Failure, Failure == S.Failure, Failure == T.Failure, Failure == U.Failure, Failure == V.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j,
                             k,
                             l,
                             m,
                             n,
                             o,
                             p,
                             q,
                             r,
                             s,
                             t,
                             u)
            .combineLatest(v) { (lhs, v) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to twenty-three additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    ///   - publisher11: A twelfth publisher to combine with the first publisher.
    ///   - publisher12: A thirteenth publisher to combine with the first publisher.
    ///   - publisher13: A fourteenth publisher to combine with the first publisher.
    ///   - publisher14: A fifteenth publisher to combine with the first publisher.
    ///   - publisher15: A sixteenth publisher to combine with the first publisher.
    ///   - publisher16: A seventeenth publisher to combine with the first publisher.
    ///   - publisher17: A eighteenth publisher to combine with the first publisher.
    ///   - publisher18: A nineteenth publisher to combine with the first publisher.
    ///   - publisher19: A twentieth publisher to combine with the first publisher.
    ///   - publisher20: A twenty-first publisher to combine with the first publisher.
    ///   - publisher21: A twenty-second publisher to combine with the first publisher.
    ///   - publisher22: A twenty-third publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and twenty-two other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher, L: Publisher, M: Publisher, N: Publisher, O: Publisher, P: Publisher, Q: Publisher, R: Publisher, S: Publisher, T: Publisher, U: Publisher, V: Publisher, W: Publisher>(_ a: A,
                                                                                                                                                                                                                                                                                                                                                         _ b: B,
                                                                                                                                                                                                                                                                                                                                                         _ c: C,
                                                                                                                                                                                                                                                                                                                                                         _ d: D,
                                                                                                                                                                                                                                                                                                                                                         _ e: E,
                                                                                                                                                                                                                                                                                                                                                         _ f: F,
                                                                                                                                                                                                                                                                                                                                                         _ g: G,
                                                                                                                                                                                                                                                                                                                                                         _ h: H,
                                                                                                                                                                                                                                                                                                                                                         _ i: I,
                                                                                                                                                                                                                                                                                                                                                         _ j: J,
                                                                                                                                                                                                                                                                                                                                                         _ k: K,
                                                                                                                                                                                                                                                                                                                                                         _ l: L,
                                                                                                                                                                                                                                                                                                                                                         _ m: M,
                                                                                                                                                                                                                                                                                                                                                         _ n: N,
                                                                                                                                                                                                                                                                                                                                                         _ o: O,
                                                                                                                                                                                                                                                                                                                                                         _ p: P,
                                                                                                                                                                                                                                                                                                                                                         _ q: Q,
                                                                                                                                                                                                                                                                                                                                                         _ r: R,
                                                                                                                                                                                                                                                                                                                                                         _ s: S,
                                                                                                                                                                                                                                                                                                                                                         _ t: T,
                                                                                                                                                                                                                                                                                                                                                         _ u: U,
                                                                                                                                                                                                                                                                                                                                                         _ v: V,
                                                                                                                                                                                                                                                                                                                                                         _ w: W) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure, Failure == L.Failure, Failure == M.Failure, Failure == N.Failure, Failure == O.Failure, Failure == P.Failure, Failure == Q.Failure, Failure == R.Failure, Failure == S.Failure, Failure == T.Failure, Failure == U.Failure, Failure == V.Failure, Failure == W.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j,
                             k,
                             l,
                             m,
                             n,
                             o,
                             p,
                             q,
                             r,
                             s,
                             t,
                             u,
                             v)
            .combineLatest(w) { (lhs, w) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to twenty-four additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    ///   - publisher11: A twelfth publisher to combine with the first publisher.
    ///   - publisher12: A thirteenth publisher to combine with the first publisher.
    ///   - publisher13: A fourteenth publisher to combine with the first publisher.
    ///   - publisher14: A fifteenth publisher to combine with the first publisher.
    ///   - publisher15: A sixteenth publisher to combine with the first publisher.
    ///   - publisher16: A seventeenth publisher to combine with the first publisher.
    ///   - publisher17: A eighteenth publisher to combine with the first publisher.
    ///   - publisher18: A nineteenth publisher to combine with the first publisher.
    ///   - publisher19: A twentieth publisher to combine with the first publisher.
    ///   - publisher20: A twenty-first publisher to combine with the first publisher.
    ///   - publisher21: A twenty-second publisher to combine with the first publisher.
    ///   - publisher22: A twenty-third publisher to combine with the first publisher.
    ///   - publisher23: A twenty-fourth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and twenty-three other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher, L: Publisher, M: Publisher, N: Publisher, O: Publisher, P: Publisher, Q: Publisher, R: Publisher, S: Publisher, T: Publisher, U: Publisher, V: Publisher, W: Publisher, X: Publisher>(_ a: A,
                                                                                                                                                                                                                                                                                                                                                                       _ b: B,
                                                                                                                                                                                                                                                                                                                                                                       _ c: C,
                                                                                                                                                                                                                                                                                                                                                                       _ d: D,
                                                                                                                                                                                                                                                                                                                                                                       _ e: E,
                                                                                                                                                                                                                                                                                                                                                                       _ f: F,
                                                                                                                                                                                                                                                                                                                                                                       _ g: G,
                                                                                                                                                                                                                                                                                                                                                                       _ h: H,
                                                                                                                                                                                                                                                                                                                                                                       _ i: I,
                                                                                                                                                                                                                                                                                                                                                                       _ j: J,
                                                                                                                                                                                                                                                                                                                                                                       _ k: K,
                                                                                                                                                                                                                                                                                                                                                                       _ l: L,
                                                                                                                                                                                                                                                                                                                                                                       _ m: M,
                                                                                                                                                                                                                                                                                                                                                                       _ n: N,
                                                                                                                                                                                                                                                                                                                                                                       _ o: O,
                                                                                                                                                                                                                                                                                                                                                                       _ p: P,
                                                                                                                                                                                                                                                                                                                                                                       _ q: Q,
                                                                                                                                                                                                                                                                                                                                                                       _ r: R,
                                                                                                                                                                                                                                                                                                                                                                       _ s: S,
                                                                                                                                                                                                                                                                                                                                                                       _ t: T,
                                                                                                                                                                                                                                                                                                                                                                       _ u: U,
                                                                                                                                                                                                                                                                                                                                                                       _ v: V,
                                                                                                                                                                                                                                                                                                                                                                       _ w: W,
                                                                                                                                                                                                                                                                                                                                                                       _ x: X) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output, X.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure, Failure == L.Failure, Failure == M.Failure, Failure == N.Failure, Failure == O.Failure, Failure == P.Failure, Failure == Q.Failure, Failure == R.Failure, Failure == S.Failure, Failure == T.Failure, Failure == U.Failure, Failure == V.Failure, Failure == W.Failure, Failure == X.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j,
                             k,
                             l,
                             m,
                             n,
                             o,
                             p,
                             q,
                             r,
                             s,
                             t,
                             u,
                             v,
                             w)
            .combineLatest(x) { (lhs, x) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output, X.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to twenty-five additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    ///   - publisher11: A twelfth publisher to combine with the first publisher.
    ///   - publisher12: A thirteenth publisher to combine with the first publisher.
    ///   - publisher13: A fourteenth publisher to combine with the first publisher.
    ///   - publisher14: A fifteenth publisher to combine with the first publisher.
    ///   - publisher15: A sixteenth publisher to combine with the first publisher.
    ///   - publisher16: A seventeenth publisher to combine with the first publisher.
    ///   - publisher17: A eighteenth publisher to combine with the first publisher.
    ///   - publisher18: A nineteenth publisher to combine with the first publisher.
    ///   - publisher19: A twentieth publisher to combine with the first publisher.
    ///   - publisher20: A twenty-first publisher to combine with the first publisher.
    ///   - publisher21: A twenty-second publisher to combine with the first publisher.
    ///   - publisher22: A twenty-third publisher to combine with the first publisher.
    ///   - publisher23: A twenty-fourth publisher to combine with the first publisher.
    ///   - publisher24: A twenty-fifth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and twenty-four other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher, L: Publisher, M: Publisher, N: Publisher, O: Publisher, P: Publisher, Q: Publisher, R: Publisher, S: Publisher, T: Publisher, U: Publisher, V: Publisher, W: Publisher, X: Publisher, Y: Publisher>(_ a: A,
                                                                                                                                                                                                                                                                                                                                                                                     _ b: B,
                                                                                                                                                                                                                                                                                                                                                                                     _ c: C,
                                                                                                                                                                                                                                                                                                                                                                                     _ d: D,
                                                                                                                                                                                                                                                                                                                                                                                     _ e: E,
                                                                                                                                                                                                                                                                                                                                                                                     _ f: F,
                                                                                                                                                                                                                                                                                                                                                                                     _ g: G,
                                                                                                                                                                                                                                                                                                                                                                                     _ h: H,
                                                                                                                                                                                                                                                                                                                                                                                     _ i: I,
                                                                                                                                                                                                                                                                                                                                                                                     _ j: J,
                                                                                                                                                                                                                                                                                                                                                                                     _ k: K,
                                                                                                                                                                                                                                                                                                                                                                                     _ l: L,
                                                                                                                                                                                                                                                                                                                                                                                     _ m: M,
                                                                                                                                                                                                                                                                                                                                                                                     _ n: N,
                                                                                                                                                                                                                                                                                                                                                                                     _ o: O,
                                                                                                                                                                                                                                                                                                                                                                                     _ p: P,
                                                                                                                                                                                                                                                                                                                                                                                     _ q: Q,
                                                                                                                                                                                                                                                                                                                                                                                     _ r: R,
                                                                                                                                                                                                                                                                                                                                                                                     _ s: S,
                                                                                                                                                                                                                                                                                                                                                                                     _ t: T,
                                                                                                                                                                                                                                                                                                                                                                                     _ u: U,
                                                                                                                                                                                                                                                                                                                                                                                     _ v: V,
                                                                                                                                                                                                                                                                                                                                                                                     _ w: W,
                                                                                                                                                                                                                                                                                                                                                                                     _ x: X,
                                                                                                                                                                                                                                                                                                                                                                                     _ y: Y) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output, X.Output, Y.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure, Failure == L.Failure, Failure == M.Failure, Failure == N.Failure, Failure == O.Failure, Failure == P.Failure, Failure == Q.Failure, Failure == R.Failure, Failure == S.Failure, Failure == T.Failure, Failure == U.Failure, Failure == V.Failure, Failure == W.Failure, Failure == X.Failure, Failure == Y.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j,
                             k,
                             l,
                             m,
                             n,
                             o,
                             p,
                             q,
                             r,
                             s,
                             t,
                             u,
                             v,
                             w,
                             x)
            .combineLatest(y) { (lhs, y) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output, X.Output, Y.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y)
            }
            .eraseToAnyPublisher()
    }

    /// Subscribes to twenty-six additional publishers and publishes a tuple upon receiving output from any of the publishers.
    ///
    /// - Parameters:
    ///   - publisher1: A second publisher to combine with the first publisher.
    ///   - publisher2: A third publisher to combine with the first publisher.
    ///   - publisher3: A fourth publisher to combine with the first publisher.
    ///   - publisher4: A fifth publisher to combine with the first publisher.
    ///   - publisher5: A sixth publisher to combine with the first publisher.
    ///   - publisher6: A seventh publisher to combine with the first publisher.
    ///   - publisher7: A eighth publisher to combine with the first publisher.
    ///   - publisher8: A ninth publisher to combine with the first publisher.
    ///   - publisher9: A tenth publisher to combine with the first publisher.
    ///   - publisher10: A eleventh publisher to combine with the first publisher.
    ///   - publisher11: A twelfth publisher to combine with the first publisher.
    ///   - publisher12: A thirteenth publisher to combine with the first publisher.
    ///   - publisher13: A fourteenth publisher to combine with the first publisher.
    ///   - publisher14: A fifteenth publisher to combine with the first publisher.
    ///   - publisher15: A sixteenth publisher to combine with the first publisher.
    ///   - publisher16: A seventeenth publisher to combine with the first publisher.
    ///   - publisher17: A eighteenth publisher to combine with the first publisher.
    ///   - publisher18: A nineteenth publisher to combine with the first publisher.
    ///   - publisher19: A twentieth publisher to combine with the first publisher.
    ///   - publisher20: A twenty-first publisher to combine with the first publisher.
    ///   - publisher21: A twenty-second publisher to combine with the first publisher.
    ///   - publisher22: A twenty-third publisher to combine with the first publisher.
    ///   - publisher23: A twenty-fourth publisher to combine with the first publisher.
    ///   - publisher24: A twenty-fifth publisher to combine with the first publisher.
    ///   - publisher25: A twenty-sixth publisher to combine with the first publisher.
    /// - Returns: A publisher that receives and combines elements from this publisher and twenty-five other publishers.
    @inlinable
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher, K: Publisher, L: Publisher, M: Publisher, N: Publisher, O: Publisher, P: Publisher, Q: Publisher, R: Publisher, S: Publisher, T: Publisher, U: Publisher, V: Publisher, W: Publisher, X: Publisher, Y: Publisher, Z: Publisher>(_ a: A,
                                                                                                                                                                                                                                                                                                                                                                                                   _ b: B,
                                                                                                                                                                                                                                                                                                                                                                                                   _ c: C,
                                                                                                                                                                                                                                                                                                                                                                                                   _ d: D,
                                                                                                                                                                                                                                                                                                                                                                                                   _ e: E,
                                                                                                                                                                                                                                                                                                                                                                                                   _ f: F,
                                                                                                                                                                                                                                                                                                                                                                                                   _ g: G,
                                                                                                                                                                                                                                                                                                                                                                                                   _ h: H,
                                                                                                                                                                                                                                                                                                                                                                                                   _ i: I,
                                                                                                                                                                                                                                                                                                                                                                                                   _ j: J,
                                                                                                                                                                                                                                                                                                                                                                                                   _ k: K,
                                                                                                                                                                                                                                                                                                                                                                                                   _ l: L,
                                                                                                                                                                                                                                                                                                                                                                                                   _ m: M,
                                                                                                                                                                                                                                                                                                                                                                                                   _ n: N,
                                                                                                                                                                                                                                                                                                                                                                                                   _ o: O,
                                                                                                                                                                                                                                                                                                                                                                                                   _ p: P,
                                                                                                                                                                                                                                                                                                                                                                                                   _ q: Q,
                                                                                                                                                                                                                                                                                                                                                                                                   _ r: R,
                                                                                                                                                                                                                                                                                                                                                                                                   _ s: S,
                                                                                                                                                                                                                                                                                                                                                                                                   _ t: T,
                                                                                                                                                                                                                                                                                                                                                                                                   _ u: U,
                                                                                                                                                                                                                                                                                                                                                                                                   _ v: V,
                                                                                                                                                                                                                                                                                                                                                                                                   _ w: W,
                                                                                                                                                                                                                                                                                                                                                                                                   _ x: X,
                                                                                                                                                                                                                                                                                                                                                                                                   _ y: Y,
                                                                                                                                                                                                                                                                                                                                                                                                   _ z: Z) -> AnyPublisher<(Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output, X.Output, Y.Output, Z.Output), Failure> where Failure == A.Failure, Failure == B.Failure, Failure == C.Failure, Failure == D.Failure, Failure == E.Failure, Failure == F.Failure, Failure == G.Failure, Failure == H.Failure, Failure == I.Failure, Failure == J.Failure, Failure == K.Failure, Failure == L.Failure, Failure == M.Failure, Failure == N.Failure, Failure == O.Failure, Failure == P.Failure, Failure == Q.Failure, Failure == R.Failure, Failure == S.Failure, Failure == T.Failure, Failure == U.Failure, Failure == V.Failure, Failure == W.Failure, Failure == X.Failure, Failure == Y.Failure, Failure == Z.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i,
                             j,
                             k,
                             l,
                             m,
                             n,
                             o,
                             p,
                             q,
                             r,
                             s,
                             t,
                             u,
                             v,
                             w,
                             x,
                             y)
            .combineLatest(z) { (lhs, z) -> (Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output, X.Output, Y.Output, Z.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z)
            }
            .eraseToAnyPublisher()
    }
}
