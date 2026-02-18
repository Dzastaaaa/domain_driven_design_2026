## Domain Driven Design Showcase

Repozytorium prezentuje podejście Domain Driven Design wypracowane podczas szkolenia z DDD prowadzonego w dniach **11-13.02.2026**. Struktura projektu opiera się na wyraźnie wydzielonych kontekstach domenowych oraz warstwach wspierających implementację taktycznych wzorców DDD.

### Najważniejsze założenia
- **Bounded Context**: każda biblioteka (`education`, `opentrainingsale`, `dedicatedtraningsale`, `logistic`, `trainerscatalogue`) reprezentuje oddzielny kontekst z własnym modelem domenowym.
- **Agregaty i encje**: kluczowe obiekty domenowe (np. `Idea`, `Training`, `Offer`, `Summary`, `Cart`) pilnują niezmienników oraz logiki biznesowej.
- **Value Objects**: identyfikatory, kody i statusy (np. `AuthorId`, `TrainingDefinitionId`, `SummaryStatus`) są niezmiennymi obiektami wartości.
- **Domain Services**: złożone reguły domenowe, które nie mieszczą się w agregatach, zostały umieszczone w usługach domenowych (np. `TrainingDomainService`, `ConfirmSummaryDomainService`).
- **Repository i porty**: interfejsy repozytoriów (`IdeaRepository`, `TrainingRepository`, `SummaryRepository`) oraz porty (`TrainersCatalogue`) oddzielają model domenowy od infrastruktury.
- **Warstwa aplikacyjna**: przypadki użycia są mapowane na serwisy aplikacyjne (`IdeaApplicationService`, `TrainingApplicationService`, `OfferApplicationService`), które orkiestrują operacje na domenie.
- **Adaptery**: warstwy `primary` i `secondary` pokazują w jaki sposób zewnętrzne interfejsy (REST, pamięć) komunikują się z rdzeniem domeny.

### Struktura repozytorium
- `education/` – kontekst zarządzania pomysłami szkoleniowymi (Idea, Draft, Training).
- `opentrainingsale/` – kontekst sprzedaży otwartych szkoleń (Cart, Training, Offer, Summary).
- `dedicatedtraningsale/` oraz `logistic/` – dodatkowe konteksty przygotowane pod przyszłą rozbudowę.
- `trainerscatalogue/` – katalog trenerów udostępniający API dla innych kontekstów.
- `bin/`, `test/` – przykładowe punkty wejścia i testy demonstracyjne.

### Jak korzystać
1. Zainstaluj zależności przy użyciu `dart pub get` w każdym kontekście.
2. Uruchom `dart analyze` oraz `dart test`, aby zweryfikować spójność modeli domenowych.
3. Eksperymentuj z przepływami (np. rejestracja pomysłu, potwierdzenie podsumowania) korzystając z warstw aplikacyjnych i adapterów.

Projekt stanowi materiał referencyjny pokazujący praktyczne rozłożenie elementów DDD, separację kontekstów oraz komunikację między nimi.
