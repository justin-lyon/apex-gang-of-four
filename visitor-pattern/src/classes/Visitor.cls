public interface Visitor {
	Decimal visit(Liquor liquorItem);
	Decimal visit(Tobacco tobaccoItem);
	Decimal visit(Necessity necessityItem);
}
