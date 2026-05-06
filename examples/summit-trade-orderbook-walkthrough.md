# Summit Trade Orderbook Mesh Walkthrough

This walk-through keeps the domain vocabulary close to the data instead of burying it in prose.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | spread pressure | 160 | ship |
| stress | fill risk | 174 | ship |
| edge | portfolio drift | 201 | ship |
| recovery | quote width | 214 | ship |
| stale | spread pressure | 154 | ship |

Start with `recovery` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `quote width` against `spread pressure`, not the raw score alone.
