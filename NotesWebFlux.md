Congress Reactive
=================

# How the Reactive framework works?
- Publisher/Subscriber
- Use Project Reactor
- Implements **Mono** and **Flux**
    - **Mono** for empty or single value
    - **Flux** for 0 to many
- **Mono** has the functionalities:
    - _just_ to create with some objects
    - _empty_ to create without objects
    - _error_ to create with an exception
- **Flux** has the functionalities
    - _just_
    - _fromArray_ to create using an array
    - _fromIterable_ to create using an iterator
    - _range_ to create using a range of numbers
    - _interval_ to create using an interval of time


# How to test with Reactive framework?

StepVerifier is useful to test Mono and Flux.

```
@Test
public void givenFluxPublisher_whenSubscribedThenReturnMultipleValues() {
    Flux<String> stringFlux = Flux.just("Hello", "Baeldung");
    StepVerifier.create(stringFlux)
        .expectNext("Hello")
        .expectNext("Baeldung")
        .expectComplete()
        .verify();
}
```
