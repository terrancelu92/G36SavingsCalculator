within BestInClass.DetailedZoning;
model Measure1_SATReset_OAT
  extends Modelica.Icons.Example;
  extends BaseClasses.WholeBuilding;

  Controls.SupAirTemp TSupSetCoo(
    TOutLow=par.TOutLow,
    TOutHigh=par.TOutHigh,
    TSupSetCooLow=par.TSupSetCooLow,
    TSupSetCooHigh=par.TSupSetCooHigh)
    annotation (Placement(transformation(extent={{-80,-50},{-60,-30}})));
equation
  connect(TSupSetCoo.TSet, AHU.TSupSetCoo) annotation (Line(points={{-59,-40},{10,
          -40},{10,-7},{19,-7}}, color={0,0,127}));
  connect(TSupSetCoo.TOut, weaBus.TDryBul) annotation (Line(points={{-81,-39},{-92,
          -39},{-92,36},{-34,36},{-34,50}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{-6,3},{-6,3}},
      horizontalAlignment=TextAlignment.Right));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false),
                    graphics={
        Line(points={{-142,48}}, color={28,108,200})}),
    experiment(
      StartTime=16329600,
      StopTime=17539200,
      Interval=599.999616,
      __Dymola_Algorithm="Cvode"),
    __Dymola_Commands(file=
          "modelica://BestInClass/Resources/Script/DetailedZoning/SAC_Summer_Measure1.mos"
        "SAC_Summer_Measure1"));
end Measure1_SATReset_OAT;
