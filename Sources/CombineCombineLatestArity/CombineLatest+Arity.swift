//
//  CombineLatest+Arity.swift
//  CombineCombineLatestArity
//

import Foundation
import Combine

@available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public extension Publisher {
    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher>(_ a: A,
                                                                               _ b: B,
                                                                               _ c: C,
                                                                               _ d: D) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, A.Failure == C.Failure, A.Failure == D.Failure {

        return combineLatest(a,
                             b,
                             c)
            .combineLatest(d) { (lhs, d) -> (Self.Output, A.Output, B.Output, C.Output, D.Output) in
                let (selfOutput, a, b, c) = lhs

                return (selfOutput, a, b, c, d)
            }
            .eraseToAnyPublisher()
    }

    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher>(_ a: A,
                                                                                             _ b: B,
                                                                                             _ c: C,
                                                                                             _ d: D,
                                                                                             _ e: E) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure {

        return combineLatest(a,
                             b,
                             c,
                             d)
            .combineLatest(e) { (lhs, e) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output) in
                let (selfOutput, a, b, c, d) = lhs

                return (selfOutput, a, b, c, d, e)
            }
            .eraseToAnyPublisher()
    }

    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher>(_ a: A,
                                                                                                           _ b: B,
                                                                                                           _ c: C,
                                                                                                           _ d: D,
                                                                                                           _ e: E,
                                                                                                           _ f: F) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e)
            .combineLatest(f) { (lhs, f) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output) in
                let (selfOutput, a, b, c, d, e) = lhs

                return (selfOutput, a, b, c, d, e, f)
            }
            .eraseToAnyPublisher()
    }

    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher>(_ a: A,
                                                                                                                         _ b: B,
                                                                                                                         _ c: C,
                                                                                                                         _ d: D,
                                                                                                                         _ e: E,
                                                                                                                         _ f: F,
                                                                                                                         _ g: G) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f)
            .combineLatest(g) { (lhs, g) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output) in
                let (selfOutput, a, b, c, d, e, f) = lhs

                return (selfOutput, a, b, c, d, e, f, g)
            }
            .eraseToAnyPublisher()
    }

    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher>(_ a: A,
                                                                                                                                       _ b: B,
                                                                                                                                       _ c: C,
                                                                                                                                       _ d: D,
                                                                                                                                       _ e: E,
                                                                                                                                       _ f: F,
                                                                                                                                       _ g: G,
                                                                                                                                       _ h: H) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g)
            .combineLatest(h) { (lhs, h) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output) in
                let (selfOutput, a, b, c, d, e, f, g) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h)
            }
            .eraseToAnyPublisher()
    }

    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher>(_ a: A,
                                                                                                                                                     _ b: B,
                                                                                                                                                     _ c: C,
                                                                                                                                                     _ d: D,
                                                                                                                                                     _ e: E,
                                                                                                                                                     _ f: F,
                                                                                                                                                     _ g: G,
                                                                                                                                                     _ h: H,
                                                                                                                                                     _ i: I) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h)
            .combineLatest(i) { (lhs, i) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i)
            }
            .eraseToAnyPublisher()
    }

    func combineLatest<A: Publisher, B: Publisher, C: Publisher, D: Publisher, E: Publisher, F: Publisher, G: Publisher, H: Publisher, I: Publisher, J: Publisher>(_ a: A,
                                                                                                                                                                   _ b: B,
                                                                                                                                                                   _ c: C,
                                                                                                                                                                   _ d: D,
                                                                                                                                                                   _ e: E,
                                                                                                                                                                   _ f: F,
                                                                                                                                                                   _ g: G,
                                                                                                                                                                   _ h: H,
                                                                                                                                                                   _ i: I,
                                                                                                                                                                   _ j: J) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure {
        return combineLatest(a,
                             b,
                             c,
                             d,
                             e,
                             f,
                             g,
                             h,
                             i)
            .combineLatest(j) { (lhs, j) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                 _ k: K) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure {
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
            .combineLatest(k) { (lhs, k) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                               _ l: L) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure, Self.Failure == L.Failure {
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
            .combineLatest(l) { (lhs, l) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                                             _ m: M) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output), Failure>  where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure, Self.Failure == L.Failure, Self.Failure == M.Failure {
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
            .combineLatest(m) { (lhs, m) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                                                           _ n: N) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output), Failure>  where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure, Self.Failure == L.Failure, Self.Failure == M.Failure, Self.Failure == N.Failure {
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
            .combineLatest(n) { (lhs, n) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                                                                         _ o: O) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure, Self.Failure == L.Failure, Self.Failure == M.Failure, Self.Failure == N.Failure, Self.Failure == O.Failure {
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
            .combineLatest(o) { (lhs, o) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                                                                                       _ p: P) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output), Failure>  where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure, Self.Failure == L.Failure, Self.Failure == M.Failure, Self.Failure == N.Failure, Self.Failure == O.Failure, Self.Failure == P.Failure {
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
            .combineLatest(p) { (lhs, p) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                                                                                                     _ q: Q) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure, Self.Failure == L.Failure, Self.Failure == M.Failure, Self.Failure == N.Failure, Self.Failure == O.Failure, Self.Failure == P.Failure, Self.Failure == Q.Failure {
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
            .combineLatest(q) { (lhs, q) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                                                                                                                   _ r: R) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure, Self.Failure == L.Failure, Self.Failure == M.Failure, Self.Failure == N.Failure, Self.Failure == O.Failure, Self.Failure == P.Failure, Self.Failure == Q.Failure, Self.Failure == R.Failure {
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
            .combineLatest(r) { (lhs, r) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                                                                                                                                 _ s: S) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure, Self.Failure == L.Failure, Self.Failure == M.Failure, Self.Failure == N.Failure, Self.Failure == O.Failure, Self.Failure == P.Failure, Self.Failure == Q.Failure, Self.Failure == R.Failure, Self.Failure == S.Failure {
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
            .combineLatest(s) { (lhs, s) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                                                                                                                                               _ t: T) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure, Self.Failure == L.Failure, Self.Failure == M.Failure, Self.Failure == N.Failure, Self.Failure == O.Failure, Self.Failure == P.Failure, Self.Failure == Q.Failure, Self.Failure == R.Failure, Self.Failure == S.Failure, Self.Failure == T.Failure {
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
            .combineLatest(t) { (lhs, t) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                                                                                                                                                             _ u: U) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure, Self.Failure == L.Failure, Self.Failure == M.Failure, Self.Failure == N.Failure, Self.Failure == O.Failure, Self.Failure == P.Failure, Self.Failure == Q.Failure, Self.Failure == R.Failure, Self.Failure == S.Failure, Self.Failure == T.Failure, Self.Failure == U.Failure {
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
            .combineLatest(u) { (lhs, u) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                                                                                                                                                                           _ v: V) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure, Self.Failure == L.Failure, Self.Failure == M.Failure, Self.Failure == N.Failure, Self.Failure == O.Failure, Self.Failure == P.Failure, Self.Failure == Q.Failure, Self.Failure == R.Failure, Self.Failure == S.Failure, Self.Failure == T.Failure, Self.Failure == U.Failure, Self.Failure == V.Failure {
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
            .combineLatest(v) { (lhs, v) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                                                                                                                                                                                         _ w: W) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure, Self.Failure == L.Failure, Self.Failure == M.Failure, Self.Failure == N.Failure, Self.Failure == O.Failure, Self.Failure == P.Failure, Self.Failure == Q.Failure, Self.Failure == R.Failure, Self.Failure == S.Failure, Self.Failure == T.Failure, Self.Failure == U.Failure, Self.Failure == V.Failure, Self.Failure == W.Failure {
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
            .combineLatest(w) { (lhs, w) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                                                                                                                                                                                                       _ x: X) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output, X.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure, Self.Failure == L.Failure, Self.Failure == M.Failure, Self.Failure == N.Failure, Self.Failure == O.Failure, Self.Failure == P.Failure, Self.Failure == Q.Failure, Self.Failure == R.Failure, Self.Failure == S.Failure, Self.Failure == T.Failure, Self.Failure == U.Failure, Self.Failure == V.Failure, Self.Failure == W.Failure, Self.Failure == X.Failure {
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
            .combineLatest(x) { (lhs, x) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output, X.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                                                                                                                                                                                                                                   _ y: Y) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output, X.Output, Y.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure, Self.Failure == L.Failure, Self.Failure == M.Failure, Self.Failure == N.Failure, Self.Failure == O.Failure, Self.Failure == P.Failure, Self.Failure == Q.Failure, Self.Failure == R.Failure, Self.Failure == S.Failure, Self.Failure == T.Failure, Self.Failure == U.Failure, Self.Failure == V.Failure, Self.Failure == W.Failure, Self.Failure == X.Failure, Self.Failure == Y.Failure {
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
            .combineLatest(y) { (lhs, y) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output, X.Output, Y.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y)
            }
            .eraseToAnyPublisher()
    }

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
                                                                                                                                                                                                                                                                                                                                                                       _ z: Z) -> AnyPublisher<(Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output, X.Output, Y.Output, Z.Output), Failure> where Self.Failure == A.Failure, Self.Failure == B.Failure, Self.Failure == C.Failure, Self.Failure == D.Failure, Self.Failure == E.Failure, Self.Failure == F.Failure, Self.Failure == G.Failure, Self.Failure == H.Failure, Self.Failure == I.Failure, Self.Failure == J.Failure, Self.Failure == K.Failure, Self.Failure == L.Failure, Self.Failure == M.Failure, Self.Failure == N.Failure, Self.Failure == O.Failure, Self.Failure == P.Failure, Self.Failure == Q.Failure, Self.Failure == R.Failure, Self.Failure == S.Failure, Self.Failure == T.Failure, Self.Failure == U.Failure, Self.Failure == V.Failure, Self.Failure == W.Failure, Self.Failure == X.Failure, Self.Failure == Y.Failure, Self.Failure == Z.Failure {
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
            .combineLatest(z) { (lhs, z) -> (Self.Output, A.Output, B.Output, C.Output, D.Output, E.Output, F.Output, G.Output, H.Output, I.Output, J.Output, K.Output, L.Output, M.Output, N.Output, O.Output, P.Output, Q.Output, R.Output, S.Output, T.Output, U.Output, V.Output, W.Output, X.Output, Y.Output, Z.Output) in
                let (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y) = lhs

                return (selfOutput, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z)
            }
            .eraseToAnyPublisher()
    }
}
