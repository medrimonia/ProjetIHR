!<arch>
debian-binary/  0           0     0     100644  4         `
2.0
control.tar.gz/ 0           0     0     100644  10240     `
control                                                                                             000644  000000  000000  00000000066 00000000000 010572  0                                                                                                    ustar 00                                                                000000  000000                                                                                                                                                                         Type: ChoregrapheBoxLibrary
Version: 3.0
title: perso
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          data.tar.gz/    0           0     0     100644  163840    `
TactileHeadPerso/box.xar                                                                            000644  000000  000000  00000014011 00000000000 013646  0                                                                                                    ustar 00                                                                000000  000000                                                                                                                                                                         <?xml version="1.0" encoding="UTF-8" ?>
<ChoregrapheBox xar_version="3">
    <Box name="root" id="2" tooltip="Enter tooltip here" x="200" y="179">
        <bitmap>media/images/box/sensors/tactileHead.png</bitmap>
        <script language="4">
            <content>
                <![CDATA[]]>
</content>
        </script>
        <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
        <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
        <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
        <Input name="RearTactilTouched" type="0" type_size="1" nature="4" stm_value_name="RearTactilTouched" inner="1" tooltip="RearTactilTouched desc" id="4" />
        <Input name="FrontTactilTouched" type="0" type_size="1" nature="4" stm_value_name="FrontTactilTouched" inner="1" tooltip="FrontTactilTouched desc" id="5" />
        <Input name="MiddleTactilTouched" type="0" type_size="1" nature="4" stm_value_name="MiddleTactilTouched" inner="1" tooltip="MiddleTactilTouched desc" id="6" />
        <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="7" />
        <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="8" />
        <Timeline enable="0">
            <BehaviorLayer name="behavior_layer1">
                <BehaviorKeyframe name="keyframe1" index="1">
                    <Diagram>
                        <Box name="HeadRear Switch" id="3" tooltip="Enter tooltip here" x="238" y="1">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("HeadRear off")
        elif p == 1 :
            self.outputString("HeadRear on")
        pass]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                            <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                        </Box>
                        <Box name="HeadFront Switch" id="2" tooltip="Enter tooltip here" x="238" y="110">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("HeadFront off")
        elif p == 1 :
            self.outputString("HeadFront on")
        pass]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                            <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                        </Box>
                        <Box name="HeadMiddle Switch" id="4" tooltip="Enter tooltip here" x="247" y="215">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("HeadMiddle off")
        elif p == 1 :
            self.outputString("HeadMiddle on")
        pass]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                            <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                        </Box>
                        <Link inputowner="3" indexofinput="2" outputowner="0" indexofoutput="4" />
                        <Link inputowner="0" indexofinput="8" outputowner="3" indexofoutput="3" />
                        <Link inputowner="2" indexofinput="2" outputowner="0" indexofoutput="5" />
                        <Link inputowner="0" indexofinput="8" outputowner="2" indexofoutput="3" />
                        <Link inputowner="4" indexofinput="2" outputowner="0" indexofoutput="6" />
                        <Link inputowner="0" indexofinput="8" outputowner="4" indexofoutput="3" />
                    </Diagram>
                </BehaviorKeyframe>
            </BehaviorLayer>
        </Timeline>
    </Box>
</ChoregrapheBox>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       xalinfo                                                                                             000644  000000  000000  00000000560 00000000000 010551  0                                                                                                    ustar 00                                                                000000  000000                                                                                                                                                                         <?xml version="1.0" encoding="UTF-8" ?>
<Folder expanded="no">
    <Node name="Head Sound Following" />
    <Node name="Reaction" />
    <Node name="StateChange" />
    <Node name="ObjectDetectionPerso" />
    <Node name="TactileHeadPerso" />
    <Node name="TactileLeftHandPerso" />
    <Node name="TactileRightHandPerso" />
    <Node name="Stimuli (2)" />
</Folder>
                                                                                                                                                Reaction/box.xar                                                                                    000644  000000  000000  00000175456 00000000000 012257  0                                                                                                    ustar 00                                                                000000  000000                                                                                                                                                                         <?xml version="1.0" encoding="UTF-8" ?>
<ChoregrapheBox xar_version="3">
    <Box name="root" id="1" tooltip="Enter tooltip here" x="402" y="95">
        <bitmap>media/images/box/box-diagram.png</bitmap>
        <script language="4">
            <content>
                <![CDATA[]]>
</content>
        </script>
        <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
        <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="" id="2" />
        <Input name="inString" type="3" type_size="1" nature="1" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="3" />
        <Timeline enable="0">
            <BehaviorLayer name="behavior_layer1">
                <BehaviorKeyframe name="keyframe1" index="1">
                    <Diagram scale="89.0899">
                        <Box name="Switch Case" id="1" tooltip="Test input value and stimulate the output matching to this value. If there is no&#x0A;matching output, the default output (onDefault) is stimulated.&#x0A;&#x0A;You can edit a case by left double-clicking on the line. You can add a&#x0A;case by right clicking on a line and selecting &apos;Insert a row&apos;. You can delete&#x0A;a case by right clicking on a line and selecting &apos;Remove a row&apos;." plugin="dispatcher_plugin" x="161" y="70">
                            <bitmap>media/images/box/interaction/choice.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[class MyClass(GeneratedClass):
	def __init__(self):
		try: # disable autoBind
		  GeneratedClass.__init__(self, False)
		except TypeError: # if NAOqi < 1.14
		  GeneratedClass.__init__( self )

	def onInput_onStart(self, p):
		p = self.typeConversion(p)
		if(p == self.typeConversion("Fear")):
			self.output_1(p)
		elif(p == self.typeConversion("Excitation")):
			self.output_2(p)
		elif(p == self.typeConversion("Surprise")):
			self.output_3(p)
		elif(p == self.typeConversion("Sadness")):
			self.output_4(p)
		elif(p == self.typeConversion("Relief")):
			self.output_5(p)
		else:
			self.onDefault()

	def typeConversion(self, p):
		try:
			p = float(p)
			pint = int(p)
			if( p == pint ):
				p = pint
		except:
			p = str(p)
		return p]]>
</content>
                            </script>
                            <pluginContent>
                                <keywords>
                                    <keyword>&quot;Fear&quot;</keyword>
                                    <keyword>&quot;Excitation&quot;</keyword>
                                    <keyword>&quot;Surprise&quot;</keyword>
                                    <keyword>&quot;Sadness&quot;</keyword>
                                    <keyword>&quot;Relief&quot;</keyword>
                                    <keyword></keyword>
                                </keywords>
                            </pluginContent>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="3" type_size="1" nature="1" inner="0" tooltip="Value to test." id="2" />
                            <Output name="onDefault" type="1" type_size="1" nature="2" inner="0" tooltip="If the input value does not match any value set on the box." id="3" />
                            <Output name="output_1" type="1" type_size="1" nature="2" inner="0" tooltip="This IO has been automatically added by box. Read box tooltip for more information." id="4" />
                            <Output name="output_2" type="1" type_size="1" nature="2" inner="0" tooltip="This IO has been automatically added by box. Read box tooltip for more information." id="5" />
                            <Output name="output_3" type="1" type_size="1" nature="2" inner="0" tooltip="This IO has been automatically added by box. Read box tooltip for more information." id="6" />
                            <Output name="output_4" type="1" type_size="1" nature="2" inner="0" tooltip="This IO has been automatically added by box. Read box tooltip for more information." id="7" />
                            <Output name="output_5" type="1" type_size="1" nature="2" inner="0" tooltip="This IO has been automatically added by box. Read box tooltip for more information." id="8" />
                        </Box>
                        <Box name="Fear" id="2" tooltip="Enter tooltip here" x="435" y="8">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="4" />
                            <Timeline enable="0">
                                <BehaviorLayer name="behavior_layer1">
                                    <BehaviorKeyframe name="keyframe1" index="1">
                                        <Diagram>
                                            <Box name="Timeline" id="1" tooltip="This box is empty (contains a single motion layer with no motor position&#x0A;defined in it) and should be used to create any animation you would like." x="349" y="161">
                                                <bitmap>media/images/box/movement/move.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                                                <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                                                <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="4" />
                                                <Timeline enable="1" fps="25" start_frame="0" end_frame="-1" size="300">
                                                    <BehaviorLayer name="behavior_layer1">
                                                        <BehaviorKeyframe name="keyframe1" index="1">
                                                            <Diagram />
                                                        </BehaviorKeyframe>
                                                    </BehaviorLayer>
                                                    <ActuatorList model="Nao">
                                                        <ActuatorCurve name="value" actuator="LElbowRoll" recordable="0" mute="0" unit="0">
                                                            <Key frame="15" value="-56.5999" />
                                                            <Key frame="30" value="-56.5999" />
                                                            <Key frame="45" value="-55.6331" />
                                                            <Key frame="49" value="-56.3362" />
                                                            <Key frame="54" value="-55.6331" />
                                                            <Key frame="58" value="-56.3362" />
                                                            <Key frame="62" value="-55.6331" />
                                                            <Key frame="66" value="-56.3362" />
                                                            <Key frame="70" value="-55.6331" />
                                                            <Key frame="90" value="-56.5999" />
                                                            <Key frame="102" value="-56.5999" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LElbowYaw" recordable="0" mute="0" unit="0">
                                                            <Key frame="15" value="-43.4209" />
                                                            <Key frame="30" value="-43.4209" />
                                                            <Key frame="45" value="-40.7842" />
                                                            <Key frame="49" value="-38.4111" />
                                                            <Key frame="54" value="-40.7842" />
                                                            <Key frame="58" value="-38.4111" />
                                                            <Key frame="62" value="-40.7842" />
                                                            <Key frame="66" value="-38.4111" />
                                                            <Key frame="70" value="-40.7842" />
                                                            <Key frame="90" value="-43.4209" />
                                                            <Key frame="102" value="-34.5439" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LHand" recordable="0" mute="0" unit="1">
                                                            <Key frame="15" value="0.8296" />
                                                            <Key frame="30" value="0.8296" />
                                                            <Key frame="45" value="0.8292" />
                                                            <Key frame="49" value="0.8292" />
                                                            <Key frame="54" value="0.8292" />
                                                            <Key frame="58" value="0.8292" />
                                                            <Key frame="62" value="0.8292" />
                                                            <Key frame="66" value="0.8292" />
                                                            <Key frame="70" value="0.8292" />
                                                            <Key frame="90" value="0.8296" />
                                                            <Key frame="102" value="0.8292" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LShoulderPitch" recordable="0" mute="0" unit="0">
                                                            <Key frame="15" value="-10.11" />
                                                            <Key frame="30" value="-10.11" />
                                                            <Key frame="45" value="-29.2704" />
                                                            <Key frame="49" value="-11.2525" />
                                                            <Key frame="54" value="-29.2704" />
                                                            <Key frame="58" value="-11.2525" />
                                                            <Key frame="62" value="-29.2704" />
                                                            <Key frame="66" value="-11.2525" />
                                                            <Key frame="70" value="-29.2704" />
                                                            <Key frame="90" value="-10.11" />
                                                            <Key frame="102" value="50.8869" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LShoulderRoll" recordable="0" mute="0" unit="0">
                                                            <Key frame="15" value="-18" />
                                                            <Key frame="30" value="-18" />
                                                            <Key frame="45" value="-11.692" />
                                                            <Key frame="49" value="-12.7467" />
                                                            <Key frame="54" value="-11.692" />
                                                            <Key frame="58" value="-12.7467" />
                                                            <Key frame="62" value="-11.692" />
                                                            <Key frame="66" value="-12.7467" />
                                                            <Key frame="70" value="-11.692" />
                                                            <Key frame="90" value="-18" />
                                                            <Key frame="102" value="2.98591" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LWristYaw" recordable="0" mute="0" unit="0">
                                                            <Key frame="15" value="-58.802" />
                                                            <Key frame="30" value="-58.802" />
                                                            <Key frame="45" value="-58.5383" />
                                                            <Key frame="49" value="-58.4504" />
                                                            <Key frame="54" value="-58.5383" />
                                                            <Key frame="58" value="-58.4504" />
                                                            <Key frame="62" value="-58.5383" />
                                                            <Key frame="66" value="-58.4504" />
                                                            <Key frame="70" value="-58.5383" />
                                                            <Key frame="90" value="-58.802" />
                                                            <Key frame="102" value="-58.5383" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RElbowRoll" recordable="0" mute="0" unit="0">
                                                            <Key frame="15" value="44.0362" />
                                                            <Key frame="30" value="44.0362" />
                                                            <Key frame="45" value="43.4209" />
                                                            <Key frame="49" value="43.333" />
                                                            <Key frame="54" value="43.4209" />
                                                            <Key frame="58" value="43.333" />
                                                            <Key frame="62" value="43.4209" />
                                                            <Key frame="66" value="43.333" />
                                                            <Key frame="70" value="43.4209" />
                                                            <Key frame="90" value="44.0362" />
                                                            <Key frame="102" value="42.6299" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RElbowYaw" recordable="0" mute="0" unit="0">
                                                            <Key frame="15" value="8.69887" />
                                                            <Key frame="30" value="8.69887" />
                                                            <Key frame="45" value="12.8298" />
                                                            <Key frame="49" value="13.7087" />
                                                            <Key frame="54" value="12.8298" />
                                                            <Key frame="58" value="13.7087" />
                                                            <Key frame="62" value="12.8298" />
                                                            <Key frame="66" value="13.7087" />
                                                            <Key frame="70" value="12.8298" />
                                                            <Key frame="90" value="8.69887" />
                                                            <Key frame="102" value="20.4764" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RHand" recordable="0" mute="0" unit="1">
                                                            <Key frame="15" value="0.6808" />
                                                            <Key frame="30" value="0.6808" />
                                                            <Key frame="45" value="0.6808" />
                                                            <Key frame="49" value="0.6808" />
                                                            <Key frame="54" value="0.6808" />
                                                            <Key frame="58" value="0.6808" />
                                                            <Key frame="62" value="0.6808" />
                                                            <Key frame="66" value="0.6808" />
                                                            <Key frame="70" value="0.6808" />
                                                            <Key frame="90" value="0.6808" />
                                                            <Key frame="102" value="0.6808" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RShoulderPitch" recordable="0" mute="0" unit="0">
                                                            <Key frame="15" value="0.0902951" />
                                                            <Key frame="30" value="0.0902951" />
                                                            <Key frame="45" value="2.46338" />
                                                            <Key frame="49" value="0.793436" />
                                                            <Key frame="54" value="2.46338" />
                                                            <Key frame="58" value="0.793436" />
                                                            <Key frame="62" value="2.46338" />
                                                            <Key frame="66" value="0.793436" />
                                                            <Key frame="70" value="2.46338" />
                                                            <Key frame="90" value="0.0902951" />
                                                            <Key frame="102" value="47.6397" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RShoulderRoll" recordable="0" mute="0" unit="0">
                                                            <Key frame="15" value="18" />
                                                            <Key frame="30" value="18" />
                                                            <Key frame="45" value="17.0486" />
                                                            <Key frame="49" value="16.9607" />
                                                            <Key frame="54" value="17.0486" />
                                                            <Key frame="58" value="16.9607" />
                                                            <Key frame="62" value="17.0486" />
                                                            <Key frame="66" value="16.9607" />
                                                            <Key frame="70" value="17.0486" />
                                                            <Key frame="90" value="18" />
                                                            <Key frame="102" value="5.18321" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RWristYaw" recordable="0" mute="0" unit="0">
                                                            <Key frame="15" value="62.8402" />
                                                            <Key frame="30" value="62.8402" />
                                                            <Key frame="45" value="64.3343" />
                                                            <Key frame="49" value="64.4222" />
                                                            <Key frame="54" value="64.3343" />
                                                            <Key frame="58" value="64.4222" />
                                                            <Key frame="62" value="64.3343" />
                                                            <Key frame="66" value="64.4222" />
                                                            <Key frame="70" value="64.3343" />
                                                            <Key frame="90" value="62.8402" />
                                                            <Key frame="102" value="63.1039" />
                                                        </ActuatorCurve>
                                                    </ActuatorList>
                                                </Timeline>
                                            </Box>
                                            <Link inputowner="1" indexofinput="2" outputowner="0" indexofoutput="2" />
                                            <Link inputowner="0" indexofinput="4" outputowner="1" indexofoutput="4" />
                                        </Diagram>
                                    </BehaviorKeyframe>
                                </BehaviorLayer>
                            </Timeline>
                            <Resource name="All motors" type="Lock" timeout="0" />
                        </Box>
                        <Box name="Excitation" id="3" tooltip="Enter tooltip here" x="435" y="106">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="4" />
                            <Timeline enable="0">
                                <BehaviorLayer name="behavior_layer1">
                                    <BehaviorKeyframe name="keyframe1" index="1">
                                        <Diagram />
                                    </BehaviorKeyframe>
                                </BehaviorLayer>
                            </Timeline>
                            <Resource name="All motors" type="Lock" timeout="0" />
                        </Box>
                        <Box name="Surprise" id="4" tooltip="Enter tooltip here" x="436" y="204">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="4" />
                            <Timeline enable="0">
                                <BehaviorLayer name="behavior_layer1">
                                    <BehaviorKeyframe name="keyframe1" index="1">
                                        <Diagram>
                                            <Box name="Say" id="1" tooltip="Say some text. Note that you must open the box to enter the text." x="275" y="84">
                                                <bitmap>media/images/box/interaction/say.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        try: # disable autoBind
          GeneratedClass.__init__(self, False)
        except TypeError: # if NAOqi < 1.14
          GeneratedClass.__init__( self )

    def onLoad(self):
        self.bIsRunning = False

    def onUnload(self):
        self.bIsRunning = False

    def onInput_onStart(self):
        self.bIsRunning = True

    def onInput_onStop(self):
        if( self.bIsRunning ):
            self.onUnload()
            self.onStopped()]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when Diagram is loaded." id="1" />
                                                <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this Input." id="2" />
                                                <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this Input." id="3" />
                                                <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished or stopped." id="4" />
                                                <Parameter name="Voice shaping (%)" inherits_from_parent="0" content_type="1" value="100" default_value="100" min="50" max="150" tooltip='Used to modify at runtime the voice feature (tone, speed). In a slighty&#x0A;different way than pitch and speed, it gives a kind of &quot;gender or age&#x0A;modification&quot; effect.&#x0A;&#x0A;For instance, a quite good male derivation of female voice can be&#x0A;obtained setting this parameter to 78%.&#x0A;&#x0A;Note: For a better effect, you can compensate this parameter with the&#x0A;speed parameter. For example, if you want to decrease by 20% the voice&#x0A;shaping, you will have to increase by 20% the speed to keep a constant&#x0A;average speed.&#x0A;&#x0A;!Warning! This feature is not available yet in Japanese, Chinese and Korean.' id="5" />
                                                <Parameter name="Speed (%)" inherits_from_parent="0" content_type="1" value="100" default_value="100" min="50" max="200" tooltip="Changes the speed of the voice.&#x0A;&#x0A;Note: For a better effect, you can compensate this parameter with the voice&#x0A;shaping parameter. For example, if you want to increase by 20% the speed, you&#x0A;will have to decrease by 20% the voice shaping to keep a constant average&#x0A;speed.&#x0A;&#x0A;!Warning! This feature is not available yet in Japanese, Chinese and Korean." id="6" />
                                                <Timeline enable="0">
                                                    <BehaviorLayer name="behavior_layer1">
                                                        <BehaviorKeyframe name="keyframe1" index="1">
                                                            <Diagram>
                                                                <Box name="Say Text" id="2" tooltip="Say the text received on its input." x="422" y="65">
                                                                    <bitmap>media/images/box/interaction/say.png</bitmap>
                                                                    <script language="4">
                                                                        <content>
                                                                            <![CDATA[import time

class MyClass(GeneratedClass):
    def __init__(self):
        try: # disable autoBind
          GeneratedClass.__init__(self, False)
        except TypeError: # if NAOqi < 1.14
          GeneratedClass.__init__( self )
        self.tts = ALProxy('ALTextToSpeech')
        self.ttsStop = ALProxy('ALTextToSpeech', True) #Create another proxy as wait is blocking if audioout is remote

    def onLoad(self):
        self.bIsRunning = False
        self.ids = []
        
    def onUnload(self):
        for id in self.ids:
            try:
                self.ttsStop.stop(id)
            except:
                pass
        while( self.bIsRunning ):
            time.sleep( 0.2 )

    def onInput_onStart(self, p):
        self.bIsRunning = True
        try:
            sentence = "\RSPD="+ str( self.getParameter("Speed (%)") ) + "\ "
            sentence += "\VCT="+ str( self.getParameter("Voice shaping (%)") ) + "\ "
            sentence += str(p)
            sentence +=  "\RST\ "
            id = self.tts.post.say(str(sentence))
            self.ids.append(id)
            self.tts.wait(id, 0)
        finally:
            try:
                self.ids.remove(id)
            except:
                pass
            if( self.ids == [] ):
                self.onStopped() # activate output of the box
                self.bIsRunning = False

    def onInput_onStop(self):
        self.onUnload()]]>
</content>
                                                                    </script>
                                                                    <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when Diagram is loaded." id="1" />
                                                                    <Input name="onStart" type="3" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this Input." id="2" />
                                                                    <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this Input." id="3" />
                                                                    <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when Box behavior is finished." id="4" />
                                                                    <Parameter name="Voice shaping (%)" inherits_from_parent="1" content_type="1" value="100" default_value="100" min="50" max="150" tooltip='Used to modify at runtime the voice feature (tone, speed). In a slighty&#x0A;different way than pitch and speed, it gives a kind of &quot;gender or age&#x0A;modification&quot; effect.&#x0A;&#x0A;For instance, a quite good male derivation of female voice can be&#x0A;obtained setting this parameter to 78%.&#x0A;&#x0A;Note: For a better effect, you can compensate this parameter with the&#x0A;speed parameter. For example, if you want to decrease by 20% the voice&#x0A;shaping, you will have to increase by 20% the speed to keep a constant&#x0A;average speed.' id="5" />
                                                                    <Parameter name="Speed (%)" inherits_from_parent="1" content_type="1" value="100" default_value="100" min="50" max="200" tooltip="Changes the speed of the voice.&#x0A;&#x0A;Note: For a better effect, you can compensate this parameter with the voice&#x0A;shaping parameter. For example, if you want to increase by 20% the speed, you&#x0A;will have to decrease by 20% the voice shaping to keep a constant average&#x0A;speed." id="6" />
                                                                </Box>
                                                                <Box name="Localized Text" id="5" tooltip="Send on the output the text associated with the robot&apos;s current voice language.&#x0A;You can display and edit the text associated with any language by&#x0A;selecting the language in the combobox.&#x0A;&#x0A;!!Warning!! The text sent on the output is NOT the displayed one but the one&#x0A;associated with the robot&apos;s current voice language." plugin="localizationbox_plugin" x="114" y="68">
                                                                    <bitmap>media/images/box/interaction/vocabulary.png</bitmap>
                                                                    <script language="4">
                                                                        <content>
                                                                            <![CDATA[class MyClass(GeneratedClass):
	def __init__(self):
		try: # disable autoBind
			GeneratedClass.__init__(self, False)
		except TypeError: # if NAOqi < 1.14
			GeneratedClass.__init__( self )

		self.tts = ALProxy("ALTextToSpeech")
		self.sentences = {
			"Chinese" : " 你好 ",
			"English" : " Amazing! ",
			"French" : " Bonjour ",
			"German" : " Hallo ",
			"Italian" : " Ciao ",
			"Japanese" : " こんにちは ",
			"Korean" : " 안녕하세요 ",
			"Portuguese" : " Olá ",
			"Brazilian" : " Olá ",
			"Spanish" : " Hola ",
			"Arabic" : " مرحبا ",
			"Polish" : " Cześć ",
			"Czech" : " Ahoj ",
			"Dutch" : " Hallo ",
			"Danish" : " Hej ",
			"Finnish" : " Hei ",
			"Swedish" : " Hallå ",
			"Russian" : " Привет ",
			"Turkish" : " Merhaba "
		}

	def onInput_onStart(self):
		sDefaultLang = self.tts.getLanguage()
		self.onStopped(self.sentences[sDefaultLang])]]>
</content>
                                                                    </script>
                                                                    <pluginContent>
                                                                        <chinese>你好</chinese>
                                                                        <english>Amazing!</english>
                                                                        <french>Bonjour</french>
                                                                        <german>Hallo</german>
                                                                        <italian>Ciao</italian>
                                                                        <japanese>こんにちは</japanese>
                                                                        <korean>안녕하세요</korean>
                                                                        <portuguese>Olá</portuguese>
                                                                        <brazilian>Olá</brazilian>
                                                                        <spanish>Hola</spanish>
                                                                        <arabic>مرحبا</arabic>
                                                                        <polish>Cześć</polish>
                                                                        <czech>Ahoj</czech>
                                                                        <dutch>Hallo</dutch>
                                                                        <danish>Hej</danish>
                                                                        <finnish>Hei</finnish>
                                                                        <swedish>Hallå</swedish>
                                                                        <russian>Привет</russian>
                                                                        <turkish>Merhaba</turkish>
                                                                        <language>1</language>
                                                                    </pluginContent>
                                                                    <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                                    <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Data is sent on the output when this input is stimulated." id="2" />
                                                                    <Output name="onStopped" type="3" type_size="1" nature="1" inner="0" tooltip="Data sent when asked." id="3" />
                                                                </Box>
                                                                <Link inputowner="0" indexofinput="4" outputowner="2" indexofoutput="4" />
                                                                <Link inputowner="5" indexofinput="2" outputowner="0" indexofoutput="2" />
                                                                <Link inputowner="2" indexofinput="2" outputowner="5" indexofoutput="3" />
                                                            </Diagram>
                                                        </BehaviorKeyframe>
                                                    </BehaviorLayer>
                                                </Timeline>
                                            </Box>
                                            <Box name="Timeline" id="2" tooltip="This box is empty (contains a single motion layer with no motor position&#x0A;defined in it) and should be used to create any animation you would like." x="275" y="200">
                                                <bitmap>media/images/box/movement/move.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                                                <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                                                <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="4" />
                                                <Timeline enable="1" fps="25" start_frame="0" end_frame="-1" size="300">
                                                    <BehaviorLayer name="behavior_layer1">
                                                        <BehaviorKeyframe name="keyframe1" index="1">
                                                            <Diagram />
                                                        </BehaviorKeyframe>
                                                    </BehaviorLayer>
                                                    <ActuatorList model="Nao">
                                                        <ActuatorCurve name="value" actuator="LElbowRoll" recordable="0" mute="0" unit="0">
                                                            <Key frame="25" value="-39.1973" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LElbowYaw" recordable="0" mute="0" unit="0">
                                                            <Key frame="25" value="-119.5" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LHand" recordable="0" mute="0" unit="1">
                                                            <Key frame="25" value="0.7456" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LShoulderPitch" recordable="0" mute="0" unit="0">
                                                            <Key frame="25" value="48.2502" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LShoulderRoll" recordable="0" mute="0" unit="0">
                                                            <Key frame="25" value="11.072" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LWristYaw" recordable="0" mute="0" unit="0">
                                                            <Key frame="25" value="-87.8062" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RElbowRoll" recordable="0" mute="0" unit="0">
                                                            <Key frame="25" value="76.8198" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RElbowYaw" recordable="0" mute="0" unit="0">
                                                            <Key frame="25" value="114.696" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RHand" recordable="0" mute="0" unit="1">
                                                            <Key frame="25" value="0.5188" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RShoulderPitch" recordable="0" mute="0" unit="0">
                                                            <Key frame="25" value="75.7651" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RShoulderRoll" recordable="0" mute="0" unit="0">
                                                            <Key frame="25" value="-23.4695" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RWristYaw" recordable="0" mute="0" unit="0">
                                                            <Key frame="25" value="104.5" />
                                                        </ActuatorCurve>
                                                    </ActuatorList>
                                                </Timeline>
                                            </Box>
                                            <Link inputowner="1" indexofinput="2" outputowner="0" indexofoutput="2" />
                                            <Link inputowner="0" indexofinput="4" outputowner="1" indexofoutput="4" />
                                            <Link inputowner="2" indexofinput="2" outputowner="0" indexofoutput="2" />
                                            <Link inputowner="0" indexofinput="4" outputowner="2" indexofoutput="4" />
                                        </Diagram>
                                    </BehaviorKeyframe>
                                </BehaviorLayer>
                            </Timeline>
                            <Resource name="All motors" type="Lock" timeout="0" />
                        </Box>
                        <Box name="Sadness" id="5" tooltip="Enter tooltip here" x="438" y="303">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="4" />
                            <Timeline enable="0">
                                <BehaviorLayer name="behavior_layer1">
                                    <BehaviorKeyframe name="keyframe1" index="1">
                                        <Diagram />
                                    </BehaviorKeyframe>
                                </BehaviorLayer>
                            </Timeline>
                            <Resource name="All motors" type="Lock" timeout="0" />
                        </Box>
                        <Box name="Relief" id="6" tooltip="Enter tooltip here" x="435" y="396">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="4" />
                            <Timeline enable="0">
                                <BehaviorLayer name="behavior_layer1">
                                    <BehaviorKeyframe name="keyframe1" index="1">
                                        <Diagram>
                                            <Box name="Wipe Forehead" id="1" tooltip="This box makes NAO wipe his forehead." x="350" y="192">
                                                <bitmap>media/images/box/movement/move.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[class MyClass(GeneratedClass):
	def __init__(self):
		try: # disable autoBind
		  GeneratedClass.__init__(self, False)
		except TypeError: # if NAOqi < 1.14
		  GeneratedClass.__init__( self )

	def onUnload(self):
		#puts code for box cleanup here
		""

	def onInput_onStart(self):
		#self.onStopped() # activate output of the box
		""

	def onInput_onStop(self):
		""]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when Diagram is loaded." id="1" />
                                                <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this Input." id="2" />
                                                <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this Input." id="3" />
                                                <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when Box behavior is finished." id="4" />
                                                <Timeline enable="1" fps="25" start_frame="0" end_frame="-1" size="300">
                                                    <ActuatorList model="Nao">
                                                        <ActuatorCurve name="value" actuator="HeadYaw" recordable="1" mute="0" unit="-1">
                                                            <Key frame="24" value="-13.4498" />
                                                            <Key frame="42" value="-35.6864" />
                                                            <Key frame="82" value="-6.50639" />
                                                            <Key frame="99" value="-0.353971" />
                                                            <Key frame="113" value="-1.58446" />
                                                            <Key frame="127" value="-2.11181" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="HeadPitch" recordable="1" mute="0" unit="-1">
                                                            <Key frame="24" value="-1.49656" />
                                                            <Key frame="42" value="24.5194" />
                                                            <Key frame="82" value="17.6638" />
                                                            <Key frame="99" value="6.41369" />
                                                            <Key frame="113" value="-0.79343" />
                                                            <Key frame="127" value="3.51326" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LShoulderPitch" recordable="1" mute="0" unit="-1">
                                                            <Key frame="20" value="49.4806" />
                                                            <Key frame="38" value="49.217" />
                                                            <Key frame="78" value="50.8869" />
                                                            <Key frame="95" value="53.26" />
                                                            <Key frame="109" value="58.2698" />
                                                            <Key frame="123" value="55.9846" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LShoulderRoll" recordable="1" mute="0" unit="-1">
                                                            <Key frame="20" value="16.4333" />
                                                            <Key frame="38" value="13.1814" />
                                                            <Key frame="78" value="11.5993" />
                                                            <Key frame="95" value="23.2889" />
                                                            <Key frame="109" value="20.6522" />
                                                            <Key frame="123" value="18.2791" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LElbowYaw" recordable="1" mute="0" unit="-1">
                                                            <Key frame="20" value="-54.8468" />
                                                            <Key frame="38" value="-47.2003" />
                                                            <Key frame="78" value="-57.7473" />
                                                            <Key frame="95" value="-53.0011" />
                                                            <Key frame="109" value="-71.2826" />
                                                            <Key frame="123" value="-55.0226" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LElbowRoll" recordable="1" mute="0" unit="-1">
                                                            <Key frame="20" value="-49.6564" />
                                                            <Key frame="38" value="-49.7443" />
                                                            <Key frame="78" value="-47.1076" />
                                                            <Key frame="95" value="-56.8635" />
                                                            <Key frame="109" value="-55.3694" />
                                                            <Key frame="123" value="-56.7757" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LWristYaw" recordable="1" mute="0" unit="-1">
                                                            <Key frame="38" value="22.1463" />
                                                            <Key frame="78" value="22.1463" />
                                                            <Key frame="95" value="22.1463" />
                                                            <Key frame="123" value="22.1463" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LHand" recordable="1" mute="0" unit="-1">
                                                            <Key frame="38" value="0.132026" />
                                                            <Key frame="78" value="0.132026" />
                                                            <Key frame="95" value="0.132026" />
                                                            <Key frame="123" value="0.132026" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RShoulderPitch" recordable="1" mute="0" unit="-1">
                                                            <Key frame="16" value="4.39699" />
                                                            <Key frame="34" value="-34.0996" />
                                                            <Key frame="74" value="-49.6564" />
                                                            <Key frame="91" value="-35.1543" />
                                                            <Key frame="105" value="33.4892" />
                                                            <Key frame="119" value="50.5401" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RShoulderRoll" recordable="1" mute="0" unit="-1">
                                                            <Key frame="16" value="-1.145" />
                                                            <Key frame="34" value="-1.145" />
                                                            <Key frame="74" value="-35.247" />
                                                            <Key frame="91" value="-47.7276" />
                                                            <Key frame="105" value="-12.8346" />
                                                            <Key frame="119" value="-12.3072" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RElbowYaw" recordable="1" mute="0" unit="-1">
                                                            <Key frame="16" value="-7.38531" />
                                                            <Key frame="34" value="-16.3503" />
                                                            <Key frame="74" value="-8.96736" />
                                                            <Key frame="91" value="43.2403" />
                                                            <Key frame="105" value="67.1469" />
                                                            <Key frame="119" value="38.8457" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RElbowRoll" recordable="1" mute="0" unit="-1">
                                                            <Key frame="16" value="73.392" />
                                                            <Key frame="34" value="80.0718" />
                                                            <Key frame="74" value="90.0914" />
                                                            <Key frame="91" value="71.1068" />
                                                            <Key frame="105" value="70.2279" />
                                                            <Key frame="119" value="48.1671" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RWristYaw" recordable="1" mute="0" unit="-1">
                                                            <Key frame="34" value="-3.34229" />
                                                            <Key frame="74" value="-2.99072" />
                                                            <Key frame="91" value="-3.86964" />
                                                            <Key frame="119" value="-2.1997" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="RHand" recordable="1" mute="0" unit="-1">
                                                            <Key frame="34" value="0.166571" />
                                                            <Key frame="74" value="0.166208" />
                                                            <Key frame="91" value="0.166571" />
                                                            <Key frame="119" value="0.166208" />
                                                        </ActuatorCurve>
                                                        <ActuatorCurve name="value" actuator="LHipYawPitch" recordable="1" mute="1" unit="-1" />
                                                        <ActuatorCurve name="value" actuator="LHipRoll" recordable="1" mute="1" unit="-1" />
                                                        <ActuatorCurve name="value" actuator="LHipPitch" recordable="1" mute="1" unit="-1" />
                                                        <ActuatorCurve name="value" actuator="LKneePitch" recordable="1" mute="1" unit="-1" />
                                                        <ActuatorCurve name="value" actuator="LAnklePitch" recordable="1" mute="1" unit="-1" />
                                                        <ActuatorCurve name="value" actuator="LAnkleRoll" recordable="1" mute="1" unit="-1" />
                                                        <ActuatorCurve name="value" actuator="RHipRoll" recordable="1" mute="1" unit="-1" />
                                                        <ActuatorCurve name="value" actuator="RHipPitch" recordable="1" mute="1" unit="-1" />
                                                        <ActuatorCurve name="value" actuator="RKneePitch" recordable="1" mute="1" unit="-1" />
                                                        <ActuatorCurve name="value" actuator="RAnklePitch" recordable="1" mute="1" unit="-1" />
                                                        <ActuatorCurve name="value" actuator="RAnkleRoll" recordable="1" mute="1" unit="-1" />
                                                    </ActuatorList>
                                                </Timeline>
                                                <Resource name="Head" type="Lock" timeout="0" />
                                                <Resource name="Arms" type="Lock" timeout="0" />
                                            </Box>
                                            <Link inputowner="1" indexofinput="2" outputowner="0" indexofoutput="2" />
                                            <Link inputowner="0" indexofinput="4" outputowner="1" indexofoutput="4" />
                                        </Diagram>
                                    </BehaviorKeyframe>
                                </BehaviorLayer>
                            </Timeline>
                            <Resource name="All motors" type="Lock" timeout="0" />
                        </Box>
                        <Link inputowner="1" indexofinput="2" outputowner="0" indexofoutput="3" />
                        <Link inputowner="3" indexofinput="2" outputowner="1" indexofoutput="5" />
                        <Link inputowner="4" indexofinput="2" outputowner="1" indexofoutput="6" />
                        <Link inputowner="5" indexofinput="2" outputowner="1" indexofoutput="7" />
                        <Link inputowner="6" indexofinput="2" outputowner="1" indexofoutput="8" />
                        <Link inputowner="2" indexofinput="2" outputowner="1" indexofoutput="4" />
                    </Diagram>
                </BehaviorKeyframe>
            </BehaviorLayer>
        </Timeline>
    </Box>
</ChoregrapheBox>
                                                                                                                                                                                                                  Head Sound Following/box.xar                                                                        000644  000000  000000  00000032000 00000000000 014317  0                                                                                                    ustar 00                                                                000000  000000                                                                                                                                                                         <?xml version="1.0" encoding="UTF-8" ?>
<ChoregrapheBox xar_version="3">
    <Box name="root" id="4" tooltip="Enter tooltip here" x="321" y="134">
        <bitmap>media/images/box/box-diagram.png</bitmap>
        <script language="4">
            <content>
                <![CDATA[]]>
</content>
        </script>
        <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
        <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
        <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
        <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="4" />
        <Timeline enable="0">
            <BehaviorLayer name="behavior_layer1">
                <BehaviorKeyframe name="keyframe1" index="1">
                    <Diagram>
                        <Box name="Sound Loc." id="5" tooltip="Every time a sound is detected, this box sends on its outputs:&#x0A;- the location of the sound source in relation to robot&apos;s head position.&#x0A;- robot&apos;s head position in relation to the rest of the body in NAO&apos;s space." x="370" y="170">
                            <bitmap>media/images/box/interaction/target_sound.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        try: # disable autoBind
          GeneratedClass.__init__(self, False)
        except TypeError: # if NAOqi < 1.14
          GeneratedClass.__init__( self )

    def onLoad(self):
        self.bIsRunning = False

    def onUnload(self):
        self.bIsRunning = False

    def onInput_onStart(self):
        self.bIsRunning = True
        proxy = ALProxy("ALAudioSourceLocalization")
        proxy.setParameter( "Sensibility", self.getParameter("Volume sensitivity (%)")/100. )

    def onInput_onStop(self):
        if( self.bIsRunning ):
            self.onUnload()
            self.onStopped()]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                            <Input name="ALAudioSourceLocalization/SoundLocated" type="0" type_size="1" nature="4" stm_value_name="ALAudioSourceLocalization/SoundLocated" inner="1" tooltip="Connected to ALMemory. Will be stimulated every time the value subscribed to changes, respecting the refresh period." id="4" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is stopped." id="5" />
                            <Output name="sourceLocation" type="2" type_size="2" nature="2" inner="0" tooltip="Location of the detected sound source including two angles (in radians):&#x0A;- azimutal (horizontal) angle&#x0A;- elevation (vertical) angle&#x0A;Both related to robot&apos;s head position." id="6" />
                            <Output name="headPosition" type="2" type_size="6" nature="2" inner="0" tooltip="Head position when the sound is detected. It contains six values:&#x0A;[x,y,z,wx,wy,wz]. The first three represents the translation of the head&#x0A;related to the robot&apos;s space. The last three represents the orientation of the head.&#x0A;&#x0A;Note: If module ALMotion is not loaded, this output returns -1.&#x0A; " id="7" />
                            <Parameter name="Threshold to be sure of the location (%)" inherits_from_parent="0" content_type="1" value="50" default_value="50" min="0" max="100" tooltip="If a sound is localized with a threshold higher than this value, then the sound&#x0A;location will be sent on the output. Else, NAO will consider that the sound is not&#x0A;localized at the right location and he will not take it into account." id="8" />
                            <Parameter name="Volume sensitivity (%)" inherits_from_parent="0" content_type="1" value="90" default_value="90" min="0" max="100" tooltip="Sensitivity to the volume of the sound heard. Higher this parameter is, less the&#x0A;sound have to be loud to be detected." id="9" />
                            <Timeline enable="0">
                                <BehaviorLayer name="behavior_layer1">
                                    <BehaviorKeyframe name="keyframe1" index="1">
                                        <Diagram>
                                            <Box name="ProcessSoundLoc" id="1" tooltip="Process the sound localization extractor to filter and give the most interesting data." x="147" y="164">
                                                <bitmap>media/images/box/interaction/target_sound.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        try: # disable autoBind
          GeneratedClass.__init__(self, False)
        except TypeError: # if NAOqi < 1.14
          GeneratedClass.__init__( self )

    def onLoad(self):
        pass

    def onUnload(self):
        pass

    def onInput_onStart(self, p):
        if p[1][2] >= self.getParameter("Threshold to be sure of the location (%)")/100.:
            self.onLocation( [ p[1][0],p[1][1] ] )
            self.onHeadPosition( [ p[2][0] , p[2][1], p[2][2], p[2][3], p[2][4], p[2][5] ] )]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="onStart" type="0" type_size="1" nature="1" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                                                <Output name="onLocation" type="2" type_size="2" nature="2" inner="0" tooltip="Location of the detected sound source including two angles (in radians):&#x0A;- azimutal (horizontal) angle&#x0A;- elevation (vertical) angle&#x0A;Both related to robot&apos;s head position." id="3" />
                                                <Output name="onHeadPosition" type="2" type_size="6" nature="2" inner="0" tooltip="Head position when the sound is detected. It contains six values:&#x0A;[x,y,z,wx,wy,wz]. The first three represents the translation of the head&#x0A;related to the robot&apos;s space. The last three represents the orientation of the head.&#x0A;&#x0A;Note: If module ALMotion is not loaded, this output returns -1." id="4" />
                                            </Box>
                                            <Link inputowner="1" indexofinput="2" outputowner="0" indexofoutput="4" />
                                            <Link inputowner="0" indexofinput="7" outputowner="1" indexofoutput="4" />
                                            <Link inputowner="0" indexofinput="6" outputowner="1" indexofoutput="3" />
                                        </Diagram>
                                    </BehaviorKeyframe>
                                </BehaviorLayer>
                            </Timeline>
                        </Box>
                        <Box name="HeadMove" id="1" tooltip="Toolbox to try change Angle" x="608" y="141">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        try:
            self.motionProxy = ALProxy("ALMotion")
        except Exception,e:
            print "Could not create proxy to ALMotion"
            print "Error was: ",e
            sys.exit(1)
            #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_onStart(self, p):
        self.motionProxy.setStiffnesses("Head", 1.0)
    
        # Example showing how to set angles, using a fraction of max speed
        names  = ["HeadYaw", "HeadPitch"]
        angles  = p
        fractionMaxSpeed  = 0.2
        self.motionProxy.changeAngles(names, angles, fractionMaxSpeed)
        self.onStopped() #~ activate output of the box
        pass

    def onInput_onStop(self):
        self.onUnload() #~ it is recommended to call onUnload of this box in a onStop method, as the code written in onUnload is used to stop the box as well
        pass]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="2" type_size="2" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="4" />
                        </Box>
                        <Box name="Wait" id="2" tooltip="Wait a moment before sending a signal on the output. The wait can be stopped any&#x0A;time. You may restart it any time, and it will start again." x="779" y="273">
                            <bitmap>media/images/box/wait.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[import threading

class MyClass(GeneratedClass):
    def __init__(self):
        try: # disable autoBind
          GeneratedClass.__init__(self, False)
        except TypeError: # if NAOqi < 1.14
          GeneratedClass.__init__( self )

    def onLoad(self):
        self.tb = False

    def onUnload(self):
        if( self.tb ):
            self.tb.cancel()
            self.tb = False

    def triggerOutput( self, rPeriod = 1 ):
        self.onUnload() # to clean everything
        self.timerOutput()

    def startTimer( self, rPeriod = 1 ):
        if( self.tb ):
            self.tb.cancel()
        self.tb = threading.Timer( rPeriod, self.triggerOutput, [rPeriod] )
        self.tb.start()

    def onInput_onStart(self):
        self.startTimer( self.getParameter("Timeout (s)") )

    def onInput_onStop(self):
        bRunning = self.tb
        self.onUnload()
        if( bRunning and self.getParameter("Trigger timerOutput if cancelled")):
            self.timerOutput()]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Start the Wait box with the configured timeout value." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Stop the wait and stimulate the output." id="3" />
                            <Output name="timerOutput" type="1" type_size="1" nature="1" inner="0" tooltip="Send a bang once time set in parameters is ellapsed, or if the box is stopped." id="4" />
                            <Parameter name="Timeout (s)" inherits_from_parent="0" content_type="2" value="1" default_value="1" min="0" max="5000" tooltip="Duration the box waits before stimulating the output." id="5" />
                            <Parameter name="Trigger timerOutput if cancelled" inherits_from_parent="0" content_type="0" value="0" default_value="1" tooltip="" id="6" />
                        </Box>
                        <Link inputowner="1" indexofinput="2" outputowner="5" indexofoutput="6" />
                        <Link inputowner="5" indexofinput="3" outputowner="5" indexofoutput="6" />
                        <Link inputowner="2" indexofinput="2" outputowner="1" indexofoutput="4" />
                        <Link inputowner="5" indexofinput="2" outputowner="2" indexofoutput="4" />
                        <Link inputowner="5" indexofinput="2" outputowner="0" indexofoutput="2" />
                    </Diagram>
                </BehaviorKeyframe>
            </BehaviorLayer>
        </Timeline>
    </Box>
</ChoregrapheBox>
TactileRightHandPerso/box.xar                                                                       000644  000000  000000  00000014064 00000000000 014665  0                                                                                                    ustar 00                                                                000000  000000                                                                                                                                                                         <?xml version="1.0" encoding="UTF-8" ?>
<ChoregrapheBox xar_version="3">
    <Box name="root" id="6" tooltip="Enter tooltip here" x="416" y="139">
        <bitmap>media/images/box/box-diagram.png</bitmap>
        <script language="4">
            <content>
                <![CDATA[]]>
</content>
        </script>
        <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
        <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
        <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
        <Input name="HandLeftLeftTouched" type="0" type_size="1" nature="4" stm_value_name="HandLeftLeftTouched" inner="1" tooltip="HandLeftLeftTouched desc" id="4" />
        <Input name="HandLeftRightTouched" type="0" type_size="1" nature="4" stm_value_name="HandLeftRightTouched" inner="1" tooltip="HandLeftRightTouched desc" id="5" />
        <Input name="HandLeftBackTouched" type="0" type_size="1" nature="4" stm_value_name="HandLeftBackTouched" inner="1" tooltip="HandLeftBackTouched desc" id="6" />
        <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="7" />
        <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="8" />
        <Timeline enable="0">
            <BehaviorLayer name="behavior_layer1">
                <BehaviorKeyframe name="keyframe1" index="1">
                    <Diagram>
                        <Box name="RightHandLeft Switch" id="3" tooltip="Enter tooltip here" x="237" y="7">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("RightHandLeft off")
        elif p == 1 :
            self.outputString("RightHandLeft on")
        pass]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                            <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                        </Box>
                        <Box name="RightHandRight Switch" id="1" tooltip="Enter tooltip here" x="239" y="103">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("RightHandRight off")
        elif p == 1 :
            self.outputString("RightHandRight on")
        pass]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                            <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                        </Box>
                        <Box name="RightHandBack Switch" id="2" tooltip="Enter tooltip here" x="243" y="207">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("RightHandBack off")
        elif p == 1 :
            self.outputString("RightHandBack on")
        pass]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                            <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                        </Box>
                        <Link inputowner="3" indexofinput="2" outputowner="0" indexofoutput="4" />
                        <Link inputowner="1" indexofinput="2" outputowner="0" indexofoutput="5" />
                        <Link inputowner="0" indexofinput="8" outputowner="1" indexofoutput="3" />
                        <Link inputowner="0" indexofinput="8" outputowner="3" indexofoutput="3" />
                        <Link inputowner="2" indexofinput="2" outputowner="0" indexofoutput="6" />
                        <Link inputowner="0" indexofinput="8" outputowner="2" indexofoutput="3" />
                    </Diagram>
                </BehaviorKeyframe>
            </BehaviorLayer>
        </Timeline>
    </Box>
</ChoregrapheBox>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            TactileLeftHandPerso/box.xar                                                                        000644  000000  000000  00000014052 00000000000 014477  0                                                                                                    ustar 00                                                                000000  000000                                                                                                                                                                         <?xml version="1.0" encoding="UTF-8" ?>
<ChoregrapheBox xar_version="3">
    <Box name="root" id="5" tooltip="Enter tooltip here" x="383" y="70">
        <bitmap>media/images/box/box-diagram.png</bitmap>
        <script language="4">
            <content>
                <![CDATA[]]>
</content>
        </script>
        <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
        <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
        <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
        <Input name="HandLeftLeftTouched" type="0" type_size="1" nature="4" stm_value_name="HandLeftLeftTouched" inner="1" tooltip="HandLeftLeftTouched desc" id="4" />
        <Input name="HandLeftRightTouched" type="0" type_size="1" nature="4" stm_value_name="HandLeftRightTouched" inner="1" tooltip="HandLeftRightTouched desc" id="5" />
        <Input name="HandLeftBackTouched" type="0" type_size="1" nature="4" stm_value_name="HandLeftBackTouched" inner="1" tooltip="HandLeftBackTouched desc" id="6" />
        <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="7" />
        <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="8" />
        <Timeline enable="0">
            <BehaviorLayer name="behavior_layer1">
                <BehaviorKeyframe name="keyframe1" index="1">
                    <Diagram>
                        <Box name="LeftHandLeft Switch" id="3" tooltip="Enter tooltip here" x="237" y="7">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("LeftHandLeft off")
        elif p == 1 :
            self.outputString("LeftHandLeft on")
        pass]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                            <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                        </Box>
                        <Box name="LeftHandRight Switch" id="1" tooltip="Enter tooltip here" x="239" y="103">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("LeftHandRight off")
        elif p == 1 :
            self.outputString("LeftHandRight on")
        pass]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                            <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                        </Box>
                        <Box name="LeftHandBack Switch" id="2" tooltip="Enter tooltip here" x="243" y="207">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("LeftHandBack off")
        elif p == 1 :
            self.outputString("LeftHandBack on")
        pass]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                            <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                        </Box>
                        <Link inputowner="3" indexofinput="2" outputowner="0" indexofoutput="4" />
                        <Link inputowner="1" indexofinput="2" outputowner="0" indexofoutput="5" />
                        <Link inputowner="0" indexofinput="8" outputowner="1" indexofoutput="3" />
                        <Link inputowner="0" indexofinput="8" outputowner="3" indexofoutput="3" />
                        <Link inputowner="2" indexofinput="2" outputowner="0" indexofoutput="6" />
                        <Link inputowner="0" indexofinput="8" outputowner="2" indexofoutput="3" />
                    </Diagram>
                </BehaviorKeyframe>
            </BehaviorLayer>
        </Timeline>
    </Box>
</ChoregrapheBox>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ObjectDetectionPerso/.metadata                                                                      000644  000000  000000  00000000101 00000000000 015014  0                                                                                                    ustar 00                                                                000000  000000                                                                                                                                                                         Name: ObjectDetectionPerso
Type: ChoregrapheProject
Version: 2.0
                                                                                                                                                                                                                                                                                                                                                                                                                                                               ObjectDetectionPerso/behavior.xar                                                                   000644  000000  000000  00000033236 00000000000 015565  0                                                                                                    ustar 00                                                                000000  000000                                                                                                                                                                         <?xml version="1.0" encoding="UTF-8" ?>
<ChoregrapheProject xmlns="http://www.aldebaran-robotics.com/schema/choregraphe/project.xsd" xar_version="3">
    <Box name="root" id="1" tooltip="Enter tooltip here" x="251" y="230">
        <bitmap>media/images/box/box-diagram.png</bitmap>
        <script language="4">
            <content>
                <![CDATA[]]>
</content>
        </script>
        <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
        <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
        <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
        <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="4" />
        <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="5" />
        <Timeline enable="0">
            <BehaviorLayer name="behavior_layer1">
                <BehaviorKeyframe name="keyframe1" index="1">
                    <Diagram>
                        <Box name="ObjectMemory" id="1" tooltip="Enter tooltip here" x="774" y="89">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[import time

class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        self.FIFO = []
        self.ObjectList = []
        self.CountList = []
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        self.FIFO = []
        self.ObjectList = []
        self.CountList = []
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_onStart(self):
        #~ self.onStopped() #~ activate output of the box
        pass

    def onInput_onStop(self):
        self.onUnload() #~ it is recommended to call onUnload of this box in a onStop method, as the code written in onUnload is used to stop the box as well
        pass

    def onInput_inputPicture(self, p):
        sizeMax = self.getParameter("FIFOSize")
        if len(self.FIFO) < sizeMax :
            self.addObjects(p)
        else :
            self.addObjects(p)
            self.removeLast()
        pass

    def onInput_inputNoPicture(self):
        sizeMax = self.getParameter("FIFOSize")
        if len(self.FIFO) < sizeMax :
            self.FIFO.append("")
        else :
            self.FIFO.append("")
            self.removeLast()
        pass
       
    def addObjects(self,p):
        self.FIFO.append(p)
        Threshold = self.getParameter("Threshold")
        for obj in p:
            found = False
            for j in range(len(self.ObjectList)) :
                if self.ObjectList[j] == obj :
                    self.CountList[j] =  self.CountList[j]+1
                    if self.CountList[j] == Threshold :
                        s = obj + ' ON'
                        self.outputString(s)
                    found = True
            if found == False :
                self.ObjectList.append(obj)
                self.CountList.append(1)
        pass    
 
    def removeLast(self):
        e = self.FIFO.pop(0)
        Threshold = self.getParameter("Threshold")
        for obj in e:
            for j in range(len(self.ObjectList)) :
                if self.ObjectList[j] == obj :
                    self.CountList[j] =  self.CountList[j]-1
                    if self.CountList[j] == Threshold-1 :
                        s = obj + ' OFF'
                        self.outputString(s)
        pass]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                            <Input name="inputPicture" type="0" type_size="1" nature="1" inner="0" tooltip="" id="4" />
                            <Input name="inputNoPicture" type="1" type_size="1" nature="1" inner="0" tooltip="" id="5" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="6" />
                            <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="7" />
                            <Parameter name="FIFOSize" inherits_from_parent="0" content_type="1" value="10" default_value="10" min="10" max="25" tooltip="" id="8" />
                            <Parameter name="Threshold" inherits_from_parent="0" content_type="1" value="5" default_value="4" min="4" max="10" tooltip="" id="9" />
                        </Box>
                        <Box name="Vision Reco." id="2" tooltip="Recognize pictures, objects and locations which are already known by NAO.&#x0A;&#x0A;Note: NAO needs to learn the picture, object or location to be able to recognize&#x0A;it. The learning process can be done through the Video Monitor (in Choregraphe&#x0A;menu, click on View, then Video Monitor)." x="202" y="122">
                            <bitmap>media/images/box/interaction/reco.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        try: # disable autoBind
          GeneratedClass.__init__(self, False)
        except TypeError: # if NAOqi < 1.14
          GeneratedClass.__init__( self )

    def onLoad(self):
        self.bIsRunning = False

    def onUnload(self):
        self.bIsRunning = False

    def onInput_onStart(self):
        self.bIsRunning = True

    def onInput_onStop(self):
        if( self.bIsRunning ):
            self.onUnload()
            self.onStopped()]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                            <Input name="PictureDetected" type="0" type_size="1" nature="4" stm_value_name="PictureDetected" inner="1" tooltip="Connected to ALMemory. Will be stimulated every time the value subscribed to changes, respecting the refresh period." id="4" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="5" />
                            <Output name="onPictureLabel" type="0" type_size="1" nature="2" inner="0" tooltip="Every time pictures/objects/locations are recognized, send the result as&#x0A;[Picture_1, ..., Picture_N], with Picture_n = [label1,...,label_M]." id="6" />
                            <Output name="onNoPicture" type="1" type_size="1" nature="2" inner="0" tooltip="No picture, object or location has been recognized." id="7" />
                            <Timeline enable="0">
                                <BehaviorLayer name="behavior_layer1">
                                    <BehaviorKeyframe name="keyframe1" index="1">
                                        <Diagram>
                                            <Box name="Process Reco." id="3" tooltip="Process picture detection extractor data (PictureDetected) to extract the labels of&#x0A;recognized pictures, objects and locations, and notify when there is nothing&#x0A;of these recognized.&#x0A;&#x0A;An output (either one or the other) is stimulated each time the recognized&#x0A;pictures, objects and locations change." x="188" y="60">
                                                <bitmap>media/images/box/interaction/reco.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        try: # disable autoBind
          GeneratedClass.__init__(self, False)
        except TypeError: # if NAOqi < 1.14
          GeneratedClass.__init__( self )

    def onLoad(self):
        self.nPicturesDetected = -1

    def onUnload(self):
        #puts code for box cleanup here
        pass

    def onInput_onStart(self, p):
        if(len(p) > 1):
            self.nPicturesDetected = len(p[1])
            labels = []
            for s in p[1]:
                labels.append(s[0])
            self.onPictureLabel( labels )
        else:
            if(self.nPicturesDetected != 0):
                self.nPicturesDetected = 0
                self.onNoPicture()]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="onStart" type="0" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input. It must be the&#x0A;PictureDetected extractor data." id="2" />
                                                <Output name="onPictureLabel" type="0" type_size="1" nature="1" inner="0" tooltip="List of recognized pictures, objects and locations labels. It is sent regularly as&#x0A;long as they are recognized.&#x0A;&#x0A;For example, you could obtain this kind of result:&#x0A;[[&apos;cover&apos;, &apos;my book&apos;], [&apos;fridge corner&apos;, &apos;kitchen&apos;, &apos;my flat&apos;]]" id="3" />
                                                <Output name="onNoPicture" type="1" type_size="1" nature="1" inner="0" tooltip="No picture, object or location is recognized." id="4" />
                                            </Box>
                                            <Link inputowner="3" indexofinput="2" outputowner="0" indexofoutput="4" />
                                            <Link inputowner="0" indexofinput="6" outputowner="3" indexofoutput="3" />
                                            <Link inputowner="0" indexofinput="7" outputowner="3" indexofoutput="4" />
                                        </Diagram>
                                    </BehaviorKeyframe>
                                </BehaviorLayer>
                            </Timeline>
                        </Box>
                        <Box name="ConvertPictures" id="3" tooltip="Enter tooltip here" x="482" y="58">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_onStart(self):
        #~ self.onStopped() #~ activate output of the box
        pass

    def onInput_onStop(self):
        self.onUnload() #~ it is recommended to call onUnload of this box in a onStop method, as the code written in onUnload is used to stop the box as well
        pass

    def onInput_inputPictures(self, p):
        list = []
        for e in p :
            list.append(e[0])
        self.outputPictures(list)
        pass]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                            <Input name="inputPictures" type="0" type_size="1" nature="1" inner="0" tooltip="" id="4" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="5" />
                            <Output name="outputPictures" type="0" type_size="1" nature="2" inner="0" tooltip="" id="6" />
                        </Box>
                        <Link inputowner="0" indexofinput="5" outputowner="1" indexofoutput="7" />
                        <Link inputowner="2" indexofinput="2" outputowner="0" indexofoutput="2" />
                        <Link inputowner="1" indexofinput="5" outputowner="2" indexofoutput="7" />
                        <Link inputowner="3" indexofinput="4" outputowner="2" indexofoutput="6" />
                        <Link inputowner="1" indexofinput="4" outputowner="3" indexofoutput="6" />
                    </Diagram>
                </BehaviorKeyframe>
            </BehaviorLayer>
        </Timeline>
    </Box>
</ChoregrapheProject>
                                                                                                                                                                                                                                                                                                                                                                  StateChange/box.xar                                                                                 000644  000000  000000  00000003630 00000000000 012661  0                                                                                                    ustar 00                                                                000000  000000                                                                                                                                                                         <?xml version="1.0" encoding="UTF-8" ?>
<ChoregrapheBox xar_version="3">
    <Box name="root" id="7" tooltip="This box is empty and should be used to create any box script you would like.&#x0A;&#x0A;To edit its script, double-click on it." x="763" y="61">
        <bitmap>media/images/box/box-script.png</bitmap>
        <script language="4">
            <content>
                <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        self.PreviousState = "none" # Pas d'état précédent
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_onStart(self , inString):
        inString = str(inString)
        if(inString != self.PreviousState):
            self.PreviousState = inString
            self.outString(inString)
            
        #~ self.onStopped() #~ activate output of the box
        pass

    def onInput_onStop(self):
        self.onUnload() #~ it is recommended to call onUnload of this box in a onStop method, as the code written in onUnload is used to stop the box as well
        pass]]>
</content>
        </script>
        <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
        <Input name="onStart" type="3" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
        <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
        <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="4" />
        <Output name="outString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="5" />
    </Box>
</ChoregrapheBox>
                                                                                                        Stimuli/box.xar                                                                                     000644  000000  000000  00000121333 00000000000 012122  0                                                                                                    ustar 00                                                                000000  000000                                                                                                                                                                         <?xml version="1.0" encoding="UTF-8" ?>
<ChoregrapheBox xar_version="3">
    <Box name="root" id="2" tooltip="Enter tooltip here" x="447" y="184">
        <bitmap>media/images/box/box-diagram.png</bitmap>
        <script language="4">
            <content>
                <![CDATA[]]>
</content>
        </script>
        <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
        <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
        <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
        <Output name="OutputString" type="3" type_size="1" nature="2" inner="0" tooltip="Signal sent when box behavior is finished." id="4" />
        <Timeline enable="0">
            <BehaviorLayer name="behavior_layer1">
                <BehaviorKeyframe name="keyframe1" index="1">
                    <Diagram scale="79.37">
                        <Box name="ObjectDetectionPerso" id="1" tooltip="Enter tooltip here" x="641" y="340">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="4" />
                            <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="5" />
                            <Timeline enable="0">
                                <BehaviorLayer name="behavior_layer1">
                                    <BehaviorKeyframe name="keyframe1" index="1">
                                        <Diagram>
                                            <Box name="ObjectMemory" id="1" tooltip="Enter tooltip here" x="774" y="89">
                                                <bitmap>media/images/box/box-diagram.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[import time

class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        self.FIFO = []
        self.ObjectList = []
        self.CountList = []
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        self.FIFO = []
        self.ObjectList = []
        self.CountList = []
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_onStart(self):
        #~ self.onStopped() #~ activate output of the box
        pass

    def onInput_onStop(self):
        self.onUnload() #~ it is recommended to call onUnload of this box in a onStop method, as the code written in onUnload is used to stop the box as well
        pass

    def onInput_inputPicture(self, p):
        sizeMax = self.getParameter("FIFOSize")
        if len(self.FIFO) < sizeMax :
            self.addObjects(p)
        else :
            self.addObjects(p)
            self.removeLast()
        pass

    def onInput_inputNoPicture(self):
        sizeMax = self.getParameter("FIFOSize")
        if len(self.FIFO) < sizeMax :
            self.FIFO.append("")
        else :
            self.FIFO.append("")
            self.removeLast()
        pass
       
    def addObjects(self,p):
        self.FIFO.append(p)
        Threshold = self.getParameter("Threshold")
        for obj in p:
            found = False
            for j in range(len(self.ObjectList)) :
                if self.ObjectList[j] == obj :
                    self.CountList[j] =  self.CountList[j]+1
                    if self.CountList[j] == Threshold :
                        s = obj + ' ON'
                        self.outputString(s)
                    found = True
            if found == False :
                self.ObjectList.append(obj)
                self.CountList.append(1)
        pass    
 
    def removeLast(self):
        e = self.FIFO.pop(0)
        Threshold = self.getParameter("Threshold")
        for obj in e:
            for j in range(len(self.ObjectList)) :
                if self.ObjectList[j] == obj :
                    self.CountList[j] =  self.CountList[j]-1
                    if self.CountList[j] == Threshold-1 :
                        s = obj + ' OFF'
                        self.outputString(s)
        pass]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                                                <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                                                <Input name="inputPicture" type="0" type_size="1" nature="1" inner="0" tooltip="" id="4" />
                                                <Input name="inputNoPicture" type="1" type_size="1" nature="1" inner="0" tooltip="" id="5" />
                                                <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="6" />
                                                <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="7" />
                                                <Parameter name="FIFOSize" inherits_from_parent="0" content_type="1" value="10" default_value="10" min="10" max="25" tooltip="" id="8" />
                                                <Parameter name="Threshold" inherits_from_parent="0" content_type="1" value="5" default_value="4" min="4" max="10" tooltip="" id="9" />
                                            </Box>
                                            <Box name="Vision Reco." id="2" tooltip="Recognize pictures, objects and locations which are already known by NAO.&#x0A;&#x0A;Note: NAO needs to learn the picture, object or location to be able to recognize&#x0A;it. The learning process can be done through the Video Monitor (in Choregraphe&#x0A;menu, click on View, then Video Monitor)." x="202" y="122">
                                                <bitmap>media/images/box/interaction/reco.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        try: # disable autoBind
          GeneratedClass.__init__(self, False)
        except TypeError: # if NAOqi < 1.14
          GeneratedClass.__init__( self )

    def onLoad(self):
        self.bIsRunning = False

    def onUnload(self):
        self.bIsRunning = False

    def onInput_onStart(self):
        self.bIsRunning = True

    def onInput_onStop(self):
        if( self.bIsRunning ):
            self.onUnload()
            self.onStopped()]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                                                <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                                                <Input name="PictureDetected" type="0" type_size="1" nature="4" stm_value_name="PictureDetected" inner="1" tooltip="Connected to ALMemory. Will be stimulated every time the value subscribed to changes, respecting the refresh period." id="4" />
                                                <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="5" />
                                                <Output name="onPictureLabel" type="0" type_size="1" nature="2" inner="0" tooltip="Every time pictures/objects/locations are recognized, send the result as&#x0A;[Picture_1, ..., Picture_N], with Picture_n = [label1,...,label_M]." id="6" />
                                                <Output name="onNoPicture" type="1" type_size="1" nature="2" inner="0" tooltip="No picture, object or location has been recognized." id="7" />
                                                <Timeline enable="0">
                                                    <BehaviorLayer name="behavior_layer1">
                                                        <BehaviorKeyframe name="keyframe1" index="1">
                                                            <Diagram>
                                                                <Box name="Process Reco." id="3" tooltip="Process picture detection extractor data (PictureDetected) to extract the labels of&#x0A;recognized pictures, objects and locations, and notify when there is nothing&#x0A;of these recognized.&#x0A;&#x0A;An output (either one or the other) is stimulated each time the recognized&#x0A;pictures, objects and locations change." x="188" y="60">
                                                                    <bitmap>media/images/box/interaction/reco.png</bitmap>
                                                                    <script language="4">
                                                                        <content>
                                                                            <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        try: # disable autoBind
          GeneratedClass.__init__(self, False)
        except TypeError: # if NAOqi < 1.14
          GeneratedClass.__init__( self )

    def onLoad(self):
        self.nPicturesDetected = -1

    def onUnload(self):
        #puts code for box cleanup here
        pass

    def onInput_onStart(self, p):
        if(len(p) > 1):
            self.nPicturesDetected = len(p[1])
            labels = []
            for s in p[1]:
                labels.append(s[0])
            self.onPictureLabel( labels )
        else:
            if(self.nPicturesDetected != 0):
                self.nPicturesDetected = 0
                self.onNoPicture()]]>
</content>
                                                                    </script>
                                                                    <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                                    <Input name="onStart" type="0" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input. It must be the&#x0A;PictureDetected extractor data." id="2" />
                                                                    <Output name="onPictureLabel" type="0" type_size="1" nature="1" inner="0" tooltip="List of recognized pictures, objects and locations labels. It is sent regularly as&#x0A;long as they are recognized.&#x0A;&#x0A;For example, you could obtain this kind of result:&#x0A;[[&apos;cover&apos;, &apos;my book&apos;], [&apos;fridge corner&apos;, &apos;kitchen&apos;, &apos;my flat&apos;]]" id="3" />
                                                                    <Output name="onNoPicture" type="1" type_size="1" nature="1" inner="0" tooltip="No picture, object or location is recognized." id="4" />
                                                                </Box>
                                                                <Link inputowner="3" indexofinput="2" outputowner="0" indexofoutput="4" />
                                                                <Link inputowner="0" indexofinput="6" outputowner="3" indexofoutput="3" />
                                                                <Link inputowner="0" indexofinput="7" outputowner="3" indexofoutput="4" />
                                                            </Diagram>
                                                        </BehaviorKeyframe>
                                                    </BehaviorLayer>
                                                </Timeline>
                                            </Box>
                                            <Box name="ConvertPictures" id="3" tooltip="Enter tooltip here" x="482" y="58">
                                                <bitmap>media/images/box/box-diagram.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_onStart(self):
        #~ self.onStopped() #~ activate output of the box
        pass

    def onInput_onStop(self):
        self.onUnload() #~ it is recommended to call onUnload of this box in a onStop method, as the code written in onUnload is used to stop the box as well
        pass

    def onInput_inputPictures(self, p):
        list = []
        for e in p :
            list.append(e[0])
        self.outputPictures(list)
        pass]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                                                <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                                                <Input name="inputPictures" type="0" type_size="1" nature="1" inner="0" tooltip="" id="4" />
                                                <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="5" />
                                                <Output name="outputPictures" type="0" type_size="1" nature="2" inner="0" tooltip="" id="6" />
                                            </Box>
                                            <Link inputowner="0" indexofinput="5" outputowner="1" indexofoutput="7" />
                                            <Link inputowner="2" indexofinput="2" outputowner="0" indexofoutput="2" />
                                            <Link inputowner="1" indexofinput="5" outputowner="2" indexofoutput="7" />
                                            <Link inputowner="3" indexofinput="4" outputowner="2" indexofoutput="6" />
                                            <Link inputowner="1" indexofinput="4" outputowner="3" indexofoutput="6" />
                                        </Diagram>
                                    </BehaviorKeyframe>
                                </BehaviorLayer>
                            </Timeline>
                        </Box>
                        <Box name="TactileRightHandPerso" id="6" tooltip="Enter tooltip here" x="635" y="230">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                            <Input name="HandLeftLeftTouched" type="0" type_size="1" nature="4" stm_value_name="HandLeftLeftTouched" inner="1" tooltip="HandLeftLeftTouched desc" id="4" />
                            <Input name="HandLeftRightTouched" type="0" type_size="1" nature="4" stm_value_name="HandLeftRightTouched" inner="1" tooltip="HandLeftRightTouched desc" id="5" />
                            <Input name="HandLeftBackTouched" type="0" type_size="1" nature="4" stm_value_name="HandLeftBackTouched" inner="1" tooltip="HandLeftBackTouched desc" id="6" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="7" />
                            <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="8" />
                            <Timeline enable="0">
                                <BehaviorLayer name="behavior_layer1">
                                    <BehaviorKeyframe name="keyframe1" index="1">
                                        <Diagram>
                                            <Box name="RightHandLeft Switch" id="3" tooltip="Enter tooltip here" x="237" y="7">
                                                <bitmap>media/images/box/box-diagram.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("RightHandLeft off")
        elif p == 1 :
            self.outputString("RightHandLeft on")
        pass]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                                                <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                                            </Box>
                                            <Box name="RightHandRight Switch" id="1" tooltip="Enter tooltip here" x="239" y="103">
                                                <bitmap>media/images/box/box-diagram.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("RightHandRight off")
        elif p == 1 :
            self.outputString("RightHandRight on")
        pass]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                                                <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                                            </Box>
                                            <Box name="RightHandBack Switch" id="2" tooltip="Enter tooltip here" x="243" y="207">
                                                <bitmap>media/images/box/box-diagram.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("RightHandBack off")
        elif p == 1 :
            self.outputString("RightHandBack on")
        pass]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                                                <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                                            </Box>
                                            <Link inputowner="3" indexofinput="2" outputowner="0" indexofoutput="4" />
                                            <Link inputowner="1" indexofinput="2" outputowner="0" indexofoutput="5" />
                                            <Link inputowner="0" indexofinput="8" outputowner="1" indexofoutput="3" />
                                            <Link inputowner="0" indexofinput="8" outputowner="3" indexofoutput="3" />
                                            <Link inputowner="2" indexofinput="2" outputowner="0" indexofoutput="6" />
                                            <Link inputowner="0" indexofinput="8" outputowner="2" indexofoutput="3" />
                                        </Diagram>
                                    </BehaviorKeyframe>
                                </BehaviorLayer>
                            </Timeline>
                        </Box>
                        <Box name="TactileLeftHandPerso" id="5" tooltip="Enter tooltip here" x="629" y="127">
                            <bitmap>media/images/box/box-diagram.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                            <Input name="HandLeftLeftTouched" type="0" type_size="1" nature="4" stm_value_name="HandLeftLeftTouched" inner="1" tooltip="HandLeftLeftTouched desc" id="4" />
                            <Input name="HandLeftRightTouched" type="0" type_size="1" nature="4" stm_value_name="HandLeftRightTouched" inner="1" tooltip="HandLeftRightTouched desc" id="5" />
                            <Input name="HandLeftBackTouched" type="0" type_size="1" nature="4" stm_value_name="HandLeftBackTouched" inner="1" tooltip="HandLeftBackTouched desc" id="6" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="7" />
                            <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="8" />
                            <Timeline enable="0">
                                <BehaviorLayer name="behavior_layer1">
                                    <BehaviorKeyframe name="keyframe1" index="1">
                                        <Diagram>
                                            <Box name="LeftHandLeft Switch" id="3" tooltip="Enter tooltip here" x="237" y="7">
                                                <bitmap>media/images/box/box-diagram.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("LeftHandLeft off")
        elif p == 1 :
            self.outputString("LeftHandLeft on")
        pass]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                                                <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                                            </Box>
                                            <Box name="LeftHandRight Switch" id="1" tooltip="Enter tooltip here" x="239" y="103">
                                                <bitmap>media/images/box/box-diagram.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("LeftHandRight off")
        elif p == 1 :
            self.outputString("LeftHandRight on")
        pass]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                                                <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                                            </Box>
                                            <Box name="LeftHandBack Switch" id="2" tooltip="Enter tooltip here" x="243" y="207">
                                                <bitmap>media/images/box/box-diagram.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("LeftHandBack off")
        elif p == 1 :
            self.outputString("LeftHandBack on")
        pass]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                                                <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                                            </Box>
                                            <Link inputowner="3" indexofinput="2" outputowner="0" indexofoutput="4" />
                                            <Link inputowner="1" indexofinput="2" outputowner="0" indexofoutput="5" />
                                            <Link inputowner="0" indexofinput="8" outputowner="1" indexofoutput="3" />
                                            <Link inputowner="0" indexofinput="8" outputowner="3" indexofoutput="3" />
                                            <Link inputowner="2" indexofinput="2" outputowner="0" indexofoutput="6" />
                                            <Link inputowner="0" indexofinput="8" outputowner="2" indexofoutput="3" />
                                        </Diagram>
                                    </BehaviorKeyframe>
                                </BehaviorLayer>
                            </Timeline>
                        </Box>
                        <Box name="TactileHeadPerso" id="2" tooltip="Enter tooltip here" x="626" y="21">
                            <bitmap>media/images/box/sensors/tactileHead.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="1" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                            <Input name="RearTactilTouched" type="0" type_size="1" nature="4" stm_value_name="RearTactilTouched" inner="1" tooltip="RearTactilTouched desc" id="4" />
                            <Input name="FrontTactilTouched" type="0" type_size="1" nature="4" stm_value_name="FrontTactilTouched" inner="1" tooltip="FrontTactilTouched desc" id="5" />
                            <Input name="MiddleTactilTouched" type="0" type_size="1" nature="4" stm_value_name="MiddleTactilTouched" inner="1" tooltip="MiddleTactilTouched desc" id="6" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="7" />
                            <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="8" />
                            <Timeline enable="0">
                                <BehaviorLayer name="behavior_layer1">
                                    <BehaviorKeyframe name="keyframe1" index="1">
                                        <Diagram>
                                            <Box name="HeadRear Switch" id="3" tooltip="Enter tooltip here" x="238" y="1">
                                                <bitmap>media/images/box/box-diagram.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("HeadRear off")
        elif p == 1 :
            self.outputString("HeadRear on")
        pass]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                                                <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                                            </Box>
                                            <Box name="HeadFront Switch" id="2" tooltip="Enter tooltip here" x="238" y="110">
                                                <bitmap>media/images/box/box-diagram.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("HeadFront off")
        elif p == 1 :
            self.outputString("HeadFront on")
        pass]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                                                <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                                            </Box>
                                            <Box name="HeadMiddle Switch" id="4" tooltip="Enter tooltip here" x="247" y="215">
                                                <bitmap>media/images/box/box-diagram.png</bitmap>
                                                <script language="4">
                                                    <content>
                                                        <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_inputValue(self, p):
        if p == 0 :
            self.outputString("HeadMiddle off")
        elif p == 1 :
            self.outputString("HeadMiddle on")
        pass]]>
</content>
                                                </script>
                                                <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                                                <Input name="inputValue" type="2" type_size="1" nature="1" inner="0" tooltip="" id="2" />
                                                <Output name="outputString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="3" />
                                            </Box>
                                            <Link inputowner="3" indexofinput="2" outputowner="0" indexofoutput="4" />
                                            <Link inputowner="0" indexofinput="8" outputowner="3" indexofoutput="3" />
                                            <Link inputowner="2" indexofinput="2" outputowner="0" indexofoutput="5" />
                                            <Link inputowner="0" indexofinput="8" outputowner="2" indexofoutput="3" />
                                            <Link inputowner="4" indexofinput="2" outputowner="0" indexofoutput="6" />
                                            <Link inputowner="0" indexofinput="8" outputowner="4" indexofoutput="3" />
                                        </Diagram>
                                    </BehaviorKeyframe>
                                </BehaviorLayer>
                            </Timeline>
                        </Box>
                        <Box name="StateChange" id="7" tooltip="This box is empty and should be used to create any box script you would like.&#x0A;&#x0A;To edit its script, double-click on it." x="816" y="12">
                            <bitmap>media/images/box/box-script.png</bitmap>
                            <script language="4">
                                <content>
                                    <![CDATA[class MyClass(GeneratedClass):
    def __init__(self):
        GeneratedClass.__init__(self)
        self.PreviousState = "none" # Pas d'état précédent
        pass

    def onLoad(self):
        #~ puts code for box initialization here
        pass

    def onUnload(self):
        #~ puts code for box cleanup here
        pass

    def onInput_onStart(self , inString):
        inString = str(inString)
        if(inString != self.PreviousState):
            self.PreviousState = inString
            self.outString(inString)
            
        #~ self.onStopped() #~ activate output of the box
        pass

    def onInput_onStop(self):
        self.onUnload() #~ it is recommended to call onUnload of this box in a onStop method, as the code written in onUnload is used to stop the box as well
        pass]]>
</content>
                            </script>
                            <Input name="onLoad" type="1" type_size="1" nature="0" inner="1" tooltip="Signal sent when diagram is loaded." id="1" />
                            <Input name="onStart" type="3" type_size="1" nature="2" inner="0" tooltip="Box behavior starts when a signal is received on this input." id="2" />
                            <Input name="onStop" type="1" type_size="1" nature="3" inner="0" tooltip="Box behavior stops when a signal is received on this input." id="3" />
                            <Output name="onStopped" type="1" type_size="1" nature="1" inner="0" tooltip="Signal sent when box behavior is finished." id="4" />
                            <Output name="outString" type="3" type_size="1" nature="2" inner="0" tooltip="" id="5" />
                        </Box>
                        <Link inputowner="2" indexofinput="2" outputowner="0" indexofoutput="2" />
                        <Link inputowner="5" indexofinput="2" outputowner="0" indexofoutput="2" />
                        <Link inputowner="6" indexofinput="2" outputowner="0" indexofoutput="2" />
                        <Link inputowner="1" indexofinput="2" outputowner="0" indexofoutput="2" />
                        <Link inputowner="7" indexofinput="2" outputowner="1" indexofoutput="5" />
                        <Link inputowner="7" indexofinput="2" outputowner="6" indexofoutput="8" />
                        <Link inputowner="7" indexofinput="2" outputowner="5" indexofoutput="8" />
                        <Link inputowner="7" indexofinput="2" outputowner="2" indexofoutput="8" />
                        <Link inputowner="0" indexofinput="4" outputowner="7" indexofoutput="5" />
                    </Diagram>
                </BehaviorKeyframe>
            </BehaviorLayer>
        </Timeline>
    </Box>
</ChoregrapheBox>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     