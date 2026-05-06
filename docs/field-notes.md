# Field Notes

The useful part of this repository is the small rule set around spread pressure and portfolio drift.

The domain cases cover `spread pressure`, `fill risk`, `portfolio drift`, and `quote width`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

The widest spread is between `quote width` and `spread pressure`, so those are the first two cases I would preserve during a refactor.

The language-specific addition keeps the review model in native test blocks.
