# summit-trade-orderbook-mesh

`summit-trade-orderbook-mesh` explores trading systems with a small Zig codebase and local fixtures. The technical goal is to design a Zig verification harness for orderbook systems, covering event replay, fixture event logs, and failure-oriented tests.

## Use Case

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how spread pressure and portfolio drift should influence a review result.

## Summit Trade Orderbook Mesh Review Notes

For a quick review, compare `quote width` with `spread pressure` before reading the middle cases.

## Highlights

- `fixtures/domain_review.csv` adds cases for spread pressure and fill risk.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/summit-trade-orderbook-walkthrough.md` walks through the case spread.
- The Zig code includes a review path for `quote width` and `spread pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Zig code keeps the review rule close to the tests.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The check exercises the source code and the review fixture. `recovery` is the high score at 214; `stale` is the low score at 154.

## Future Work

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
