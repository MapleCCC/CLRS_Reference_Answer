---
title: CLRS Chapter 3 Reference Answer
author: MapleCCC <https://github.com/MapleCCC>
date: 2019.7.9
description: CLRS Chapter 3 Reference Answer
tags: algorithms, data structures
keywords: algorithms, data structures
use_math: true
---

# CLRS Chapter 3 Reference Answer

## Section 3.1

### 3.1-1

Before going on, we first prove a lemma:

> Lemma: For any nonnegative number $a$ and $b$, $\mathrm{max}(a, b) \leq a + b$.

We prove the lemma by contradiction. Suppose $\mathrm{max}(a, b) > a + b$. Then $\mathrm{max}(a, b) > a + b > a$ and $\mathrm{max}(a, b) > a + b > b$. $\mathrm{max}(a, b)$ is larger than both $a$ and $b$, which is obviously fallacious.

Since $f(n)$ is asymptotically nonnegative, there exists a constant $n_1$, such that $f(n)$ is nonnegative for all $n \geq n_1$.

Since $g(n)$ is asymptotically nonnegative, there exists a constant $n_2$, such that $g(n)$ is nonnegative for all $n \geq n_2$.

Let $c_1 = 1/2$, $c_2 = 1$ and $n_0 = \mathrm{\mathrm{max}}(n_1, n_2)$. It follows that $f(n)$ and $g(n)$ are nonnegative for all $n \geq n_0$.

The following formulae hold for all $n \geq n_0$.

$$
c_1(f(n)+g(n)) = \frac{1}{2}(f(n)+g(n)) =\frac{1}{2}f(n)+\frac{1}{2}g(n) \leq \frac{1}{2}\mathrm{max}(f(n)+g(n)) + \frac{1}{2}\mathrm{max}(f(n)+g(n)) = \mathrm{max}(f(n) + g(n))
$$

$$
\mathrm{max}(f(n), g(n)) \leq f(n) + g(n) = c_2 (f(n) + g(n))
$$

Based on above formulae, we have:
$$
0 \leq c_1(f(n)+g(n)) \leq \mathrm{max}(f(n)+g(n)) \leq c_2(f(n)+g(n))
$$

Based on definition, we proved that $\mathrm{max}(f(n), g(n)) = \Theta(f(n)+g(n))$.

### 3.1-2

Let $c_1 = 2^{-b}$, $c_2=2^b$, and $n_0=2|a|$. For $n \geq n_0$, we have,

$$
(n+a)^b = (\frac{n}{2} + \frac{n}{2} +a)^b \geq (\frac{n}{2} + \frac{n_0}{2}+a)^b = (\frac{n}{2}+|a|+a)^b \geq (\frac{n}{2})^b = c_1 n^b
$$

Also,

$$
c_2 n^b = (2n)^b = (n+n)^b \geq (n+n_0)^b = (n+2|a|)^b \geq (n+a)^b
$$

Based on above formulae, we have, for $n \geq n_0$,

$$
0 \leq c_1 n^b \leq (n+a)^b \leq c_2 n^b
$$

Based on definition, we proved that $(n+a)^b = \Theta(n^b)$.

### 3.1-3

TODO
<!-- The statement says that the algorithm's best-case running time cannot be worse than $O(n^2)$. -->

### 3.1-4

The first proposition is true, while the second proposition is false.

Let $c=3$ and $n_0=1$. For all $n \geq n_0$, we have,

$$
0 \leq 2^{n+1} = 2 \cdot 2^n \leq 3 \cdot 2^n = c \cdot 2^n
$$

So $2^{n+1} = O(2^n)$.

As for the second proposition, for all positive $c$, we have $n_0=\mathrm{max}(1, -\log_2(c))$, such that for all $n \geq n_0$,

$$
c \cdot 2^{2n} = c \cdot 2^{n+n} \geq c \cdot 2^{n+n_0} = c \cdot 2^{n_0} \cdot 2^n = c \cdot \mathrm{max}(2, \frac{1}{c}) \cdot 2^n
$$

When $0 < c \leq 1/2$, the above formula becomes $c \cdot 2^{2n} \geq c \cdot \mathrm{max}(2, \frac{1}{c}) \cdot 2^n = c \cdot \frac{1}{c} \cdot 2^n = 2^n$.

When $c > 1/2$, the above formula becomes $c \cdot 2^{2n} \geq c \cdot \mathrm{max}(2, \frac{1}{c}) \cdot 2^n = c \cdot 2 \cdot 2^n > 2 \cdot 2^n > 2^n$.

Either way, we have $0 < 2^n < c \cdot 2^{2n}$, that is, $2^n = o(2^{2n})$. Since $2^{2n}$ is a non-tight upper bound of $2^n$, $2^n$ can never be upper bound of $2^{2n}$.

### 3.1-5

From definition of $o$-notation, for any positive constant $c$, there exists a constant $n_0$ such that $0 \leq f(n) < c \cdot g(n)$ for all $n \geq n_0$. Since $g(n)$ is asymptotically nonnegative, we can divide two sides of the inequation by $g(n)$ preserving inequality, that is, $0 \leq \frac{f(n)}{g(n)} < c$. Now we can rephrase the statement.

For any positive $c$, there exists a constant $n_0$ such that $0 \leq \frac{f(n)}{g(n)} < c$. This immediately yields $\lim_{n \to \infty}\frac{f(n)}{g(n)} = 0$ based on limit theory.

### 3.1-6

It's trivial to prove.

### 3.1-7

We prove by contradiction. Suppose $f(n)$ belongs to both $o(g(n))$ and $\omega(g(n))$. Below two statements hold:

For all positive $c$, there exists a constant $n_1=n_1(c)$, such that $0 \leq f(n) < c \cdot g(n)$ for all $n \geq n_1$.

For all positive $c$, there exists a constant $n_2=n_2(c)$, such that $0 \leq c \cdot g(n) < f(n)$ for all $n \geq n_2$.

Let $n_3=n_3(c)=\mathrm{max}(n_1(c), n_2(c))$, then we have, for all positive $c$, there exists a constant $n_3=n_3(c)$, such that both $f(n) < c \cdot g(n)$ and $f(n) > c \cdot g(n)$ are true, which is an obvious contradiction.

### 3.1-8

$\Omega(g(n, m))$ = {$f(n,m)$: there exist positive constant $c$, $n_0$, and $m_0$ such that $0 \leq c\cdot g(n,m) \leq f(n,m)$ for all $n \geq n_0$ or $m \geq m_0$}

$\Theta(g(n, m))$ = {$f(n,m)$: there exist positive constant $c_1$, $c_2$, $n_0$, and $m_0$ such that $0 \leq c_1\cdot g(n,m) \leq f(n,m) \leq c_2 \cdot g(n,m)$ for all $n \geq n_0$ or $m \geq m_0$}

## Section 3.2

### 3.2-1

For any number $m < n$, $f(m) \leq f(n)$ and $g(m) \leq g(n)$. Add them up: $f(m) + g(m) \leq f(n) + g(n)$. So $f(n) + g(n)$ is monotonically increasing.

For any number $m < n$, $g(m) \leq g(n)$. Then $f(g(m)) \leq f(g(n))$. So $f(g(n))$ is monotonically increasing.

For any number $m < n$, $f(m) \leq f(n)$ and $g(m) \leq g(n)$. Also since $f(n)$ and $g(n)$ are nonnegative, we can multiply the two inequations by two sides while preserving inequality sign: $f(m) \cdot g(m) \leq f(n) \cdot g(n)$. So the function $f(n) \cdot g(n)$ is monotonically increasing.

### 3.2-2

$$
a^{\log_b c} = b^{\log_b \! a^{\log_b c}} = b^{\log_b \! c \ \cdot \ \log_b \! a} = c^{\log_b a}
$$

### 3.2-3

From Stirling's approximation,

$$n! = \sqrt{2\pi n} (\frac{n}{e})^n(1+\Theta(\frac{1}{n}))$$

Take logarithm of both side,

$$\lg n! = n \lg n + (- \lg e) n + \frac{1}{2} \lg n + \lg(1 + \Theta(\frac{1}{n})) + \frac{1}{2} \lg(2\pi)$$

In $O$-notation, subdomincant terms and coefficients are ignored. So $\lg n! = O(n\lg n - n\lg e)$.

For all positive $c$, there is $n_0 \geq 1/c$ such that $c \cdot n^n = c \cdot n \cdot n^{n-1} \geq c \cdot n_0 \cdot n^{n-1} \geq c \cdot 1/c \cdot n^{n-1} = n^{n-1} \geq n(n-1)(n-2)...3\cdot2\cdot1 = n!$ for all $n\geq n_0$. So $n! = o(n^n)$.

> Lemma: For all $n \geq 7$, $(n-1)! > 2^n$.

The lemma is easy to prove via induction.

For all positive $c$, there is $n_0 \geq \max(c, 7)$ such that $n! = n (n-1)! \geq n_0 (n-1)! \geq c (n-1)! \geq c \cdot 2^n$, for all $n \geq n_0$. So $n! = \omega(2^n)$.

### 3.2-4

TODO
