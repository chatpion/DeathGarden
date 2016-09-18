<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2" />
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="3304167536">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4056227926">
        <_items dataType="Array" type="Duality.Component[]" id="2322322464" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="1369515172">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3304167536</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-200</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-200</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="3841443343">
            <active dataType="Bool">true</active>
            <farZ dataType="Float">10000</farZ>
            <focusDist dataType="Float">500</focusDist>
            <gameobj dataType="ObjectRef">3304167536</gameobj>
            <nearZ dataType="Float">0</nearZ>
            <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="971433739">
              <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="3009592950" length="4">
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="3492952032">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="3239678862">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="None" value="0" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="OrthoScreen" value="1" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">2</_version>
            </passes>
            <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Parallax" value="1" />
            <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">2</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1352303322" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3275969572">
            <item dataType="Type" id="709499588" value="Duality.Components.Transform" />
            <item dataType="Type" id="3327300502" value="Duality.Components.Camera" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="718350614">
            <item dataType="ObjectRef">1369515172</item>
            <item dataType="ObjectRef">3841443343</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1369515172</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="609990176">rtdP/b6VQU+rp6xsu5zvnw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Camera</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3713721345">
      <active dataType="Bool">true</active>
      <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="2891681795">
        <_items dataType="Array" type="Duality.GameObject[]" id="1320766758" length="4">
          <item dataType="Struct" type="Duality.GameObject" id="3327357866">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="546028606">
              <_items dataType="Array" type="Duality.Component[]" id="851580432" length="8">
                <item dataType="Struct" type="Duality.Components.Transform" id="1392705502">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0.0112183746</angle>
                  <angleAbs dataType="Float">0.0112183746</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">3327357866</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform />
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="TilemapJam.HoverAnimation" id="3663233064">
                  <_x003C_MaxHeight_x003E_k__BackingField dataType="Float">5</_x003C_MaxHeight_x003E_k__BackingField>
                  <_x003C_TwoPiTime_x003E_k__BackingField dataType="Float">2.5</_x003C_TwoPiTime_x003E_k__BackingField>
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3327357866</gameobj>
                  <timeElapsed dataType="Float">0</timeElapsed>
                  <x dataType="Float">0</x>
                </item>
                <item dataType="Struct" type="TilemapJam.CustomActorRenderer" id="221766113">
                  <_x003C_flip_x003E_k__BackingField dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="Horizontal" value="1" />
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <customMat />
                  <depthScale dataType="Float">0.01</depthScale>
                  <gameobj dataType="ObjectRef">3327357866</gameobj>
                  <height dataType="Float">0</height>
                  <isVertical dataType="Bool">true</isVertical>
                  <offset dataType="Float">-1</offset>
                  <rect dataType="Struct" type="Duality.Rect">
                    <H dataType="Float">32</H>
                    <W dataType="Float">32</W>
                    <X dataType="Float">-16</X>
                    <Y dataType="Float">-25</Y>
                  </rect>
                  <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
                    <contentPath dataType="String">Data\Graphics\death.Material.res</contentPath>
                  </sharedMat>
                  <spriteIndex dataType="Int">-1</spriteIndex>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
                <item dataType="Struct" type="TilemapJam.CharacterController" id="1916835677">
                  <_x003C_defaultMaxSpeed_x003E_k__BackingField dataType="Float">100</_x003C_defaultMaxSpeed_x003E_k__BackingField>
                  <_x003C_maxSpeed_x003E_k__BackingField dataType="Float">0</_x003C_maxSpeed_x003E_k__BackingField>
                  <accelValue dataType="Float">500</accelValue>
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3327357866</gameobj>
                  <isAttacking dataType="Bool">false</isAttacking>
                </item>
                <item dataType="Struct" type="TilemapJam.StuckInBorders" id="2219907306">
                  <_x003C_r_x003E_k__BackingField dataType="Struct" type="Duality.Rect" />
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3327357866</gameobj>
                </item>
                <item dataType="Struct" type="TilemapJam.Player" id="1513862499">
                  <_x003C_currentHealth_x003E_k__BackingField dataType="Int">120</_x003C_currentHealth_x003E_k__BackingField>
                  <_x003C_Lose_x003E_k__BackingField dataType="Struct" type="TilemapJam.LoseMessage" id="1706162599">
                    <_x003C_lose1_x003E_k__BackingField dataType="Struct" type="Duality.GameObject" id="573316038">
                      <active dataType="Bool">true</active>
                      <children />
                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3399065256">
                        <_items dataType="Array" type="Duality.Component[]" id="3758714540" length="4">
                          <item dataType="Struct" type="Duality.Components.Transform" id="2933630970">
                            <active dataType="Bool">true</active>
                            <angle dataType="Float">0</angle>
                            <angleAbs dataType="Float">0</angleAbs>
                            <angleVel dataType="Float">0</angleVel>
                            <angleVelAbs dataType="Float">0</angleVelAbs>
                            <deriveAngle dataType="Bool">true</deriveAngle>
                            <gameobj dataType="ObjectRef">573316038</gameobj>
                            <ignoreParent dataType="Bool">false</ignoreParent>
                            <parentTransform dataType="Struct" type="Duality.Components.Transform" id="3895252849">
                              <active dataType="Bool">true</active>
                              <angle dataType="Float">0</angle>
                              <angleAbs dataType="Float">0</angleAbs>
                              <angleVel dataType="Float">0</angleVel>
                              <angleVelAbs dataType="Float">0</angleVelAbs>
                              <deriveAngle dataType="Bool">true</deriveAngle>
                              <gameobj dataType="Struct" type="Duality.GameObject" id="1534937917">
                                <active dataType="Bool">false</active>
                                <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="214019364">
                                  <_items dataType="Array" type="Duality.GameObject[]" id="1437028036" length="4">
                                    <item dataType="ObjectRef">573316038</item>
                                    <item dataType="Struct" type="Duality.GameObject" id="4145412219">
                                      <active dataType="Bool">true</active>
                                      <children />
                                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="57921879">
                                        <_items dataType="Array" type="Duality.Component[]" id="3883183118" length="4">
                                          <item dataType="Struct" type="Duality.Components.Transform" id="2210759855">
                                            <active dataType="Bool">true</active>
                                            <angle dataType="Float">0</angle>
                                            <angleAbs dataType="Float">0</angleAbs>
                                            <angleVel dataType="Float">0</angleVel>
                                            <angleVelAbs dataType="Float">0</angleVelAbs>
                                            <deriveAngle dataType="Bool">true</deriveAngle>
                                            <gameobj dataType="ObjectRef">4145412219</gameobj>
                                            <ignoreParent dataType="Bool">false</ignoreParent>
                                            <parentTransform dataType="ObjectRef">3895252849</parentTransform>
                                            <pos dataType="Struct" type="Duality.Vector3">
                                              <X dataType="Float">0</X>
                                              <Y dataType="Float">0</Y>
                                              <Z dataType="Float">-1</Z>
                                            </pos>
                                            <posAbs dataType="Struct" type="Duality.Vector3">
                                              <X dataType="Float">0</X>
                                              <Y dataType="Float">0</Y>
                                              <Z dataType="Float">-10</Z>
                                            </posAbs>
                                            <scale dataType="Float">1</scale>
                                            <scaleAbs dataType="Float">1</scaleAbs>
                                            <vel dataType="Struct" type="Duality.Vector3" />
                                            <velAbs dataType="Struct" type="Duality.Vector3" />
                                          </item>
                                          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="1593073745">
                                            <active dataType="Bool">true</active>
                                            <blockAlign dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                                            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                                              <A dataType="Byte">255</A>
                                              <B dataType="Byte">255</B>
                                              <G dataType="Byte">255</G>
                                              <R dataType="Byte">255</R>
                                            </colorTint>
                                            <customMat />
                                            <gameobj dataType="ObjectRef">4145412219</gameobj>
                                            <iconMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
                                            <offset dataType="Int">0</offset>
                                            <text dataType="Struct" type="Duality.Drawing.FormattedText" id="3013740257">
                                              <flowAreas />
                                              <fonts dataType="Array" type="Duality.ContentRef`1[[Duality.Resources.Font]][]" id="3351442286">
                                                <item dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Font]]">
                                                  <contentPath dataType="String">Default:Font:GenericMonospace10</contentPath>
                                                </item>
                                              </fonts>
                                              <icons />
                                              <lineAlign dataType="Enum" type="Duality.Alignment" name="Left" value="1" />
                                              <maxHeight dataType="Int">0</maxHeight>
                                              <maxWidth dataType="Int">0</maxWidth>
                                              <sourceText dataType="String"></sourceText>
                                              <wrapMode dataType="Enum" type="Duality.Drawing.FormattedText+WrapMode" name="Word" value="1" />
                                            </text>
                                            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                                          </item>
                                        </_items>
                                        <_size dataType="Int">2</_size>
                                        <_version dataType="Int">2</_version>
                                      </compList>
                                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3630467520" surrogate="true">
                                        <header />
                                        <body>
                                          <keys dataType="Array" type="System.Object[]" id="1507957725">
                                            <item dataType="ObjectRef">709499588</item>
                                            <item dataType="Type" id="910691430" value="Duality.Components.Renderers.TextRenderer" />
                                          </keys>
                                          <values dataType="Array" type="System.Object[]" id="2863264888">
                                            <item dataType="ObjectRef">2210759855</item>
                                            <item dataType="ObjectRef">1593073745</item>
                                          </values>
                                        </body>
                                      </compMap>
                                      <compTransform dataType="ObjectRef">2210759855</compTransform>
                                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                                        <header>
                                          <data dataType="Array" type="System.Byte[]" id="1945429367">qbWho7QEhk25kFBwoLOpVA==</data>
                                        </header>
                                        <body />
                                      </identifier>
                                      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                                      <name dataType="String">Lose2</name>
                                      <parent dataType="ObjectRef">1534937917</parent>
                                      <prefabLink />
                                    </item>
                                    <item dataType="Struct" type="Duality.GameObject" id="880469936">
                                      <active dataType="Bool">true</active>
                                      <children />
                                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1572520376">
                                        <_items dataType="Array" type="Duality.Component[]" id="1619086444" length="4">
                                          <item dataType="Struct" type="Duality.Components.Transform" id="3240784868">
                                            <active dataType="Bool">true</active>
                                            <angle dataType="Float">0</angle>
                                            <angleAbs dataType="Float">0</angleAbs>
                                            <angleVel dataType="Float">0</angleVel>
                                            <angleVelAbs dataType="Float">0</angleVelAbs>
                                            <deriveAngle dataType="Bool">true</deriveAngle>
                                            <gameobj dataType="ObjectRef">880469936</gameobj>
                                            <ignoreParent dataType="Bool">false</ignoreParent>
                                            <parentTransform dataType="ObjectRef">3895252849</parentTransform>
                                            <pos dataType="Struct" type="Duality.Vector3">
                                              <X dataType="Float">0</X>
                                              <Y dataType="Float">20</Y>
                                              <Z dataType="Float">-1</Z>
                                            </pos>
                                            <posAbs dataType="Struct" type="Duality.Vector3">
                                              <X dataType="Float">0</X>
                                              <Y dataType="Float">20</Y>
                                              <Z dataType="Float">-10</Z>
                                            </posAbs>
                                            <scale dataType="Float">1</scale>
                                            <scaleAbs dataType="Float">1</scaleAbs>
                                            <vel dataType="Struct" type="Duality.Vector3" />
                                            <velAbs dataType="Struct" type="Duality.Vector3" />
                                          </item>
                                          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="2623098758">
                                            <active dataType="Bool">true</active>
                                            <blockAlign dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                                            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                                              <A dataType="Byte">255</A>
                                              <B dataType="Byte">255</B>
                                              <G dataType="Byte">255</G>
                                              <R dataType="Byte">255</R>
                                            </colorTint>
                                            <customMat />
                                            <gameobj dataType="ObjectRef">880469936</gameobj>
                                            <iconMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
                                            <offset dataType="Int">0</offset>
                                            <text dataType="Struct" type="Duality.Drawing.FormattedText" id="1176677534">
                                              <flowAreas />
                                              <fonts dataType="Array" type="Duality.ContentRef`1[[Duality.Resources.Font]][]" id="3874458512">
                                                <item dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Font]]">
                                                  <contentPath dataType="String">Default:Font:GenericMonospace10</contentPath>
                                                </item>
                                              </fonts>
                                              <icons />
                                              <lineAlign dataType="Enum" type="Duality.Alignment" name="Left" value="1" />
                                              <maxHeight dataType="Int">0</maxHeight>
                                              <maxWidth dataType="Int">0</maxWidth>
                                              <sourceText dataType="String"></sourceText>
                                              <wrapMode dataType="Enum" type="Duality.Drawing.FormattedText+WrapMode" name="Word" value="1" />
                                            </text>
                                            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                                          </item>
                                        </_items>
                                        <_size dataType="Int">2</_size>
                                        <_version dataType="Int">2</_version>
                                      </compList>
                                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3017709790" surrogate="true">
                                        <header />
                                        <body>
                                          <keys dataType="Array" type="System.Object[]" id="2164984314">
                                            <item dataType="ObjectRef">709499588</item>
                                            <item dataType="ObjectRef">910691430</item>
                                          </keys>
                                          <values dataType="Array" type="System.Object[]" id="1808388410">
                                            <item dataType="ObjectRef">3240784868</item>
                                            <item dataType="ObjectRef">2623098758</item>
                                          </values>
                                        </body>
                                      </compMap>
                                      <compTransform dataType="ObjectRef">3240784868</compTransform>
                                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                                        <header>
                                          <data dataType="Array" type="System.Byte[]" id="2085791610">6K40c05nLkmz6SC9TJjTdg==</data>
                                        </header>
                                        <body />
                                      </identifier>
                                      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                                      <name dataType="String">Lose3</name>
                                      <parent dataType="ObjectRef">1534937917</parent>
                                      <prefabLink />
                                    </item>
                                  </_items>
                                  <_size dataType="Int">3</_size>
                                  <_version dataType="Int">3</_version>
                                </children>
                                <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3876826390">
                                  <_items dataType="Array" type="Duality.Component[]" id="1420090478" length="4">
                                    <item dataType="ObjectRef">3895252849</item>
                                    <item dataType="ObjectRef">1706162599</item>
                                    <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3177104485">
                                      <active dataType="Bool">true</active>
                                      <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                                        <A dataType="Byte">171</A>
                                        <B dataType="Byte">191</B>
                                        <G dataType="Byte">191</G>
                                        <R dataType="Byte">191</R>
                                      </colorTint>
                                      <customMat />
                                      <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
                                      <gameobj dataType="ObjectRef">1534937917</gameobj>
                                      <offset dataType="Int">0</offset>
                                      <pixelGrid dataType="Bool">false</pixelGrid>
                                      <rect dataType="Struct" type="Duality.Rect">
                                        <H dataType="Float">100</H>
                                        <W dataType="Float">400</W>
                                        <X dataType="Float">-200</X>
                                        <Y dataType="Float">-50</Y>
                                      </rect>
                                      <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
                                      <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
                                        <contentPath dataType="String">Data\Graphics\TransparentBlank.Material.res</contentPath>
                                      </sharedMat>
                                      <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                                    </item>
                                  </_items>
                                  <_size dataType="Int">3</_size>
                                  <_version dataType="Int">3</_version>
                                </compList>
                                <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="618513184" surrogate="true">
                                  <header />
                                  <body>
                                    <keys dataType="Array" type="System.Object[]" id="1116113928">
                                      <item dataType="ObjectRef">709499588</item>
                                      <item dataType="Type" id="1650102636" value="TilemapJam.LoseMessage" />
                                      <item dataType="Type" id="2303383606" value="Duality.Components.Renderers.SpriteRenderer" />
                                    </keys>
                                    <values dataType="Array" type="System.Object[]" id="2466107870">
                                      <item dataType="ObjectRef">3895252849</item>
                                      <item dataType="ObjectRef">1706162599</item>
                                      <item dataType="ObjectRef">3177104485</item>
                                    </values>
                                  </body>
                                </compMap>
                                <compTransform dataType="ObjectRef">3895252849</compTransform>
                                <identifier dataType="Struct" type="System.Guid" surrogate="true">
                                  <header>
                                    <data dataType="Array" type="System.Byte[]" id="4241449972">4giMWPFLHUObP0huSdaswg==</data>
                                  </header>
                                  <body />
                                </identifier>
                                <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                                <name dataType="String">Lose</name>
                                <parent dataType="Struct" type="Duality.GameObject" id="2786082065">
                                  <active dataType="Bool">true</active>
                                  <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="3670008653">
                                    <_items dataType="Array" type="Duality.GameObject[]" id="1116989478" length="8">
                                      <item dataType="Struct" type="Duality.GameObject" id="3566866563">
                                        <active dataType="Bool">true</active>
                                        <children />
                                        <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="755477395">
                                          <_items dataType="Array" type="Duality.Component[]" id="3985418470" length="4">
                                            <item dataType="Struct" type="Duality.Components.Transform" id="1632214199">
                                              <active dataType="Bool">true</active>
                                              <angle dataType="Float">0</angle>
                                              <angleAbs dataType="Float">0</angleAbs>
                                              <angleVel dataType="Float">0</angleVel>
                                              <angleVelAbs dataType="Float">0</angleVelAbs>
                                              <deriveAngle dataType="Bool">true</deriveAngle>
                                              <gameobj dataType="ObjectRef">3566866563</gameobj>
                                              <ignoreParent dataType="Bool">false</ignoreParent>
                                              <parentTransform />
                                              <pos dataType="Struct" type="Duality.Vector3">
                                                <X dataType="Float">0</X>
                                                <Y dataType="Float">-100</Y>
                                                <Z dataType="Float">-50</Z>
                                              </pos>
                                              <posAbs dataType="Struct" type="Duality.Vector3">
                                                <X dataType="Float">0</X>
                                                <Y dataType="Float">-100</Y>
                                                <Z dataType="Float">-50</Z>
                                              </posAbs>
                                              <scale dataType="Float">1</scale>
                                              <scaleAbs dataType="Float">1</scaleAbs>
                                              <vel dataType="Struct" type="Duality.Vector3" />
                                              <velAbs dataType="Struct" type="Duality.Vector3" />
                                            </item>
                                            <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="1014528089">
                                              <active dataType="Bool">true</active>
                                              <blockAlign dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                                              <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                                                <A dataType="Byte">255</A>
                                                <B dataType="Byte">232</B>
                                                <G dataType="Byte">232</G>
                                                <R dataType="Byte">232</R>
                                              </colorTint>
                                              <customMat />
                                              <gameobj dataType="ObjectRef">3566866563</gameobj>
                                              <iconMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
                                              <offset dataType="Int">0</offset>
                                              <text dataType="Struct" type="Duality.Drawing.FormattedText" id="766469337">
                                                <flowAreas />
                                                <fonts dataType="Array" type="Duality.ContentRef`1[[Duality.Resources.Font]][]" id="2549333454">
                                                  <item dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Font]]">
                                                    <contentPath dataType="String">Default:Font:GenericMonospace10</contentPath>
                                                  </item>
                                                </fonts>
                                                <icons />
                                                <lineAlign dataType="Enum" type="Duality.Alignment" name="Left" value="1" />
                                                <maxHeight dataType="Int">0</maxHeight>
                                                <maxWidth dataType="Int">0</maxWidth>
                                                <sourceText dataType="String"></sourceText>
                                                <wrapMode dataType="Enum" type="Duality.Drawing.FormattedText+WrapMode" name="Word" value="1" />
                                              </text>
                                              <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                                            </item>
                                            <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="914065835">
                                              <active dataType="Bool">true</active>
                                              <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                                                <A dataType="Byte">92</A>
                                                <B dataType="Byte">144</B>
                                                <G dataType="Byte">144</G>
                                                <R dataType="Byte">144</R>
                                              </colorTint>
                                              <customMat />
                                              <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
                                              <gameobj dataType="ObjectRef">3566866563</gameobj>
                                              <offset dataType="Int">0</offset>
                                              <pixelGrid dataType="Bool">false</pixelGrid>
                                              <rect dataType="Struct" type="Duality.Rect">
                                                <H dataType="Float">20</H>
                                                <W dataType="Float">50</W>
                                                <X dataType="Float">-25</X>
                                                <Y dataType="Float">-13</Y>
                                              </rect>
                                              <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
                                              <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
                                                <contentPath dataType="String">Data\Graphics\TransparentBlank.Material.res</contentPath>
                                              </sharedMat>
                                              <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                                            </item>
                                          </_items>
                                          <_size dataType="Int">3</_size>
                                          <_version dataType="Int">3</_version>
                                        </compList>
                                        <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3163830008" surrogate="true">
                                          <header />
                                          <body>
                                            <keys dataType="Array" type="System.Object[]" id="764060153">
                                              <item dataType="ObjectRef">709499588</item>
                                              <item dataType="ObjectRef">910691430</item>
                                              <item dataType="ObjectRef">2303383606</item>
                                            </keys>
                                            <values dataType="Array" type="System.Object[]" id="3015820416">
                                              <item dataType="ObjectRef">1632214199</item>
                                              <item dataType="ObjectRef">1014528089</item>
                                              <item dataType="ObjectRef">914065835</item>
                                            </values>
                                          </body>
                                        </compMap>
                                        <compTransform dataType="ObjectRef">1632214199</compTransform>
                                        <identifier dataType="Struct" type="System.Guid" surrogate="true">
                                          <header>
                                            <data dataType="Array" type="System.Byte[]" id="2328828923">s1HJtFO7oUGo29uQZ1X8kQ==</data>
                                          </header>
                                          <body />
                                        </identifier>
                                        <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                                        <name dataType="String">Time</name>
                                        <parent dataType="ObjectRef">2786082065</parent>
                                        <prefabLink />
                                      </item>
                                      <item dataType="ObjectRef">1534937917</item>
                                    </_items>
                                    <_size dataType="Int">2</_size>
                                    <_version dataType="Int">8</_version>
                                  </children>
                                  <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3924085432">
                                    <_items dataType="Array" type="Duality.Component[]" id="90935591" length="0" />
                                    <_size dataType="Int">0</_size>
                                    <_version dataType="Int">0</_version>
                                  </compList>
                                  <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1724404519" surrogate="true">
                                    <header />
                                    <body>
                                      <keys dataType="Array" type="System.Object[]" id="807406228" length="0" />
                                      <values dataType="Array" type="System.Object[]" id="337807414" length="0" />
                                    </body>
                                  </compMap>
                                  <compTransform />
                                  <identifier dataType="Struct" type="System.Guid" surrogate="true">
                                    <header>
                                      <data dataType="Array" type="System.Byte[]" id="439693104">fHgokjhHz0WIt3Ma2MFPog==</data>
                                    </header>
                                    <body />
                                  </identifier>
                                  <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                                  <name dataType="String">Hud</name>
                                  <parent />
                                  <prefabLink />
                                </parent>
                                <prefabLink />
                              </gameobj>
                              <ignoreParent dataType="Bool">false</ignoreParent>
                              <parentTransform />
                              <pos dataType="Struct" type="Duality.Vector3">
                                <X dataType="Float">0</X>
                                <Y dataType="Float">0</Y>
                                <Z dataType="Float">-9</Z>
                              </pos>
                              <posAbs dataType="Struct" type="Duality.Vector3">
                                <X dataType="Float">0</X>
                                <Y dataType="Float">0</Y>
                                <Z dataType="Float">-9</Z>
                              </posAbs>
                              <scale dataType="Float">1</scale>
                              <scaleAbs dataType="Float">1</scaleAbs>
                              <vel dataType="Struct" type="Duality.Vector3" />
                              <velAbs dataType="Struct" type="Duality.Vector3" />
                            </parentTransform>
                            <pos dataType="Struct" type="Duality.Vector3">
                              <X dataType="Float">0</X>
                              <Y dataType="Float">-20</Y>
                              <Z dataType="Float">-25</Z>
                            </pos>
                            <posAbs dataType="Struct" type="Duality.Vector3">
                              <X dataType="Float">0</X>
                              <Y dataType="Float">-20</Y>
                              <Z dataType="Float">-34</Z>
                            </posAbs>
                            <scale dataType="Float">1</scale>
                            <scaleAbs dataType="Float">1</scaleAbs>
                            <vel dataType="Struct" type="Duality.Vector3" />
                            <velAbs dataType="Struct" type="Duality.Vector3" />
                          </item>
                          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="2315944860">
                            <active dataType="Bool">true</active>
                            <blockAlign dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                              <A dataType="Byte">255</A>
                              <B dataType="Byte">255</B>
                              <G dataType="Byte">255</G>
                              <R dataType="Byte">255</R>
                            </colorTint>
                            <customMat />
                            <gameobj dataType="ObjectRef">573316038</gameobj>
                            <iconMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
                            <offset dataType="Int">0</offset>
                            <text dataType="Struct" type="Duality.Drawing.FormattedText" id="105730348">
                              <flowAreas />
                              <fonts dataType="Array" type="Duality.ContentRef`1[[Duality.Resources.Font]][]" id="3780751076">
                                <item dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Font]]">
                                  <contentPath dataType="String">Default:Font:GenericMonospace10</contentPath>
                                </item>
                              </fonts>
                              <icons />
                              <lineAlign dataType="Enum" type="Duality.Alignment" name="Left" value="1" />
                              <maxHeight dataType="Int">0</maxHeight>
                              <maxWidth dataType="Int">0</maxWidth>
                              <sourceText dataType="String"></sourceText>
                              <wrapMode dataType="Enum" type="Duality.Drawing.FormattedText+WrapMode" name="Word" value="1" />
                            </text>
                            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                          </item>
                        </_items>
                        <_size dataType="Int">2</_size>
                        <_version dataType="Int">2</_version>
                      </compList>
                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="877715358" surrogate="true">
                        <header />
                        <body>
                          <keys dataType="Array" type="System.Object[]" id="774286186">
                            <item dataType="ObjectRef">709499588</item>
                            <item dataType="ObjectRef">910691430</item>
                          </keys>
                          <values dataType="Array" type="System.Object[]" id="2043946202">
                            <item dataType="ObjectRef">2933630970</item>
                            <item dataType="ObjectRef">2315944860</item>
                          </values>
                        </body>
                      </compMap>
                      <compTransform dataType="ObjectRef">2933630970</compTransform>
                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                        <header>
                          <data dataType="Array" type="System.Byte[]" id="305406666">N1Xq2cZyBU6fE4n0T1Fz9A==</data>
                        </header>
                        <body />
                      </identifier>
                      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                      <name dataType="String">Lose1</name>
                      <parent dataType="ObjectRef">1534937917</parent>
                      <prefabLink />
                    </_x003C_lose1_x003E_k__BackingField>
                    <_x003C_lose2_x003E_k__BackingField dataType="ObjectRef">4145412219</_x003C_lose2_x003E_k__BackingField>
                    <_x003C_lose3_x003E_k__BackingField dataType="ObjectRef">880469936</_x003C_lose3_x003E_k__BackingField>
                    <active dataType="Bool">true</active>
                    <Attacker />
                    <BunnyCount dataType="Int">0</BunnyCount>
                    <gameobj dataType="ObjectRef">1534937917</gameobj>
                    <PlantCount dataType="Int">0</PlantCount>
                  </_x003C_Lose_x003E_k__BackingField>
                  <_x003C_time_x003E_k__BackingField dataType="ObjectRef">3566866563</_x003C_time_x003E_k__BackingField>
                  <_x003C_totalHealth_x003E_k__BackingField dataType="Int">120</_x003C_totalHealth_x003E_k__BackingField>
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3327357866</gameobj>
                  <timer />
                </item>
              </_items>
              <_size dataType="Int">6</_size>
              <_version dataType="Int">22</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="212137482" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="605830172">
                  <item dataType="ObjectRef">709499588</item>
                  <item dataType="Type" id="105186756" value="TilemapJam.HoverAnimation" />
                  <item dataType="Type" id="3973958038" value="TilemapJam.CharacterController" />
                  <item dataType="Type" id="2876068992" value="TilemapJam.CustomActorRenderer" />
                  <item dataType="Type" id="2996324386" value="TilemapJam.StuckInBorders" />
                  <item dataType="Type" id="2386282972" value="TilemapJam.Player" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="1064951830">
                  <item dataType="ObjectRef">1392705502</item>
                  <item dataType="ObjectRef">3663233064</item>
                  <item dataType="ObjectRef">1916835677</item>
                  <item dataType="ObjectRef">221766113</item>
                  <item dataType="ObjectRef">2219907306</item>
                  <item dataType="ObjectRef">1513862499</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">1392705502</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2859705736">3D9KKxkEiUykm+mKLCmV/w==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">Death</name>
            <parent dataType="ObjectRef">3713721345</parent>
            <prefabLink />
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">3</_version>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3295454136">
        <_items dataType="Array" type="Duality.Component[]" id="1272598377" length="4" />
        <_size dataType="Int">0</_size>
        <_version dataType="Int">2</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="217748777" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1104691668" length="0" />
          <values dataType="Array" type="System.Object[]" id="1702384566" length="0" />
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2611907824">TaZh8DtAOEKbam16VIcsdA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Actors</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1207237209">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="192408827">
        <_items dataType="Array" type="Duality.Component[]" id="1010259542" length="4">
          <item dataType="Struct" type="TilemapJam.PlayerController" id="3758567358">
            <active dataType="Bool">true</active>
            <character dataType="ObjectRef">1916835677</character>
            <gameobj dataType="ObjectRef">1207237209</gameobj>
          </item>
          <item dataType="Struct" type="TilemapJam.PlayerAttack" id="1938712298">
            <_x003C_attack_x003E_k__BackingField dataType="Int">10</_x003C_attack_x003E_k__BackingField>
            <_x003C_attackAccel_x003E_k__BackingField dataType="Float">10000</_x003C_attackAccel_x003E_k__BackingField>
            <_x003C_attackCooldown_x003E_k__BackingField dataType="Float">300</_x003C_attackCooldown_x003E_k__BackingField>
            <_x003C_attackDuration_x003E_k__BackingField dataType="Float">175</_x003C_attackDuration_x003E_k__BackingField>
            <_x003C_attackMaxSpeed_x003E_k__BackingField dataType="Float">500</_x003C_attackMaxSpeed_x003E_k__BackingField>
            <_x003C_attackRadius_x003E_k__BackingField dataType="Float">0.75</_x003C_attackRadius_x003E_k__BackingField>
            <_x003C_decayerToDust_x003E_k__BackingField dataType="Struct" type="TilemapJam.DecayTile" id="1169164951">
              <_x003C_decayTime_x003E_k__BackingField dataType="Float">7000</_x003C_decayTime_x003E_k__BackingField>
              <_x003C_defaultIndex_x003E_k__BackingField dataType="Int">0</_x003C_defaultIndex_x003E_k__BackingField>
              <_x003C_tilemap_x003E_k__BackingField dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="2892344289">
                <active dataType="Bool">true</active>
                <gameobj dataType="Struct" type="Duality.GameObject" id="890492272">
                  <active dataType="Bool">true</active>
                  <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="435239018">
                    <_items dataType="Array" type="Duality.GameObject[]" id="3126349856" length="4" />
                    <_size dataType="Int">0</_size>
                    <_version dataType="Int">2</_version>
                  </children>
                  <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3153751770">
                    <_items dataType="Array" type="Duality.Component[]" id="3519248976" length="4">
                      <item dataType="ObjectRef">2892344289</item>
                      <item dataType="Struct" type="Duality.Components.Transform" id="3250807204">
                        <active dataType="Bool">true</active>
                        <angle dataType="Float">0</angle>
                        <angleAbs dataType="Float">0</angleAbs>
                        <angleVel dataType="Float">0</angleVel>
                        <angleVelAbs dataType="Float">0</angleVelAbs>
                        <deriveAngle dataType="Bool">true</deriveAngle>
                        <gameobj dataType="ObjectRef">890492272</gameobj>
                        <ignoreParent dataType="Bool">false</ignoreParent>
                        <parentTransform />
                        <pos dataType="Struct" type="Duality.Vector3" />
                        <posAbs dataType="Struct" type="Duality.Vector3" />
                        <scale dataType="Float">1</scale>
                        <scaleAbs dataType="Float">1</scaleAbs>
                        <vel dataType="Struct" type="Duality.Vector3" />
                        <velAbs dataType="Struct" type="Duality.Vector3" />
                      </item>
                      <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="3883567720">
                        <active dataType="Bool">true</active>
                        <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                          <A dataType="Byte">255</A>
                          <B dataType="Byte">255</B>
                          <G dataType="Byte">255</G>
                          <R dataType="Byte">255</R>
                        </colorTint>
                        <externalTilemap />
                        <gameobj dataType="ObjectRef">890492272</gameobj>
                        <offset dataType="Float">0.01</offset>
                        <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                        <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                        <tileDepthOffset dataType="Int">0</tileDepthOffset>
                        <tileDepthScale dataType="Float">0.01</tileDepthScale>
                        <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                      </item>
                    </_items>
                    <_size dataType="Int">3</_size>
                    <_version dataType="Int">5</_version>
                  </compList>
                  <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="19080138" surrogate="true">
                    <header />
                    <body>
                      <keys dataType="Array" type="System.Object[]" id="3833545920">
                        <item dataType="Type" id="2382229788" value="Duality.Plugins.Tilemaps.Tilemap" />
                        <item dataType="ObjectRef">709499588</item>
                        <item dataType="Type" id="3270727190" value="Duality.Plugins.Tilemaps.TilemapRenderer" />
                      </keys>
                      <values dataType="Array" type="System.Object[]" id="577177166">
                        <item dataType="ObjectRef">2892344289</item>
                        <item dataType="ObjectRef">3250807204</item>
                        <item dataType="ObjectRef">3883567720</item>
                      </values>
                    </body>
                  </compMap>
                  <compTransform dataType="ObjectRef">3250807204</compTransform>
                  <identifier dataType="Struct" type="System.Guid" surrogate="true">
                    <header>
                      <data dataType="Array" type="System.Byte[]" id="1580706908">spD54uorO0WTHvxzprme+Q==</data>
                    </header>
                    <body />
                  </identifier>
                  <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                  <name dataType="String">Background</name>
                  <parent dataType="Struct" type="Duality.GameObject" id="1100131266">
                    <active dataType="Bool">true</active>
                    <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="2011357192">
                      <_items dataType="Array" type="Duality.GameObject[]" id="170348908" length="8">
                        <item dataType="ObjectRef">890492272</item>
                        <item dataType="Struct" type="Duality.GameObject" id="1138827133">
                          <active dataType="Bool">true</active>
                          <children />
                          <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2252173105">
                            <_items dataType="Array" type="Duality.Component[]" id="3166310446" length="4">
                              <item dataType="Struct" type="Duality.Components.Transform" id="3499142065">
                                <active dataType="Bool">true</active>
                                <angle dataType="Float">0</angle>
                                <angleAbs dataType="Float">0</angleAbs>
                                <angleVel dataType="Float">0</angleVel>
                                <angleVelAbs dataType="Float">0</angleVelAbs>
                                <deriveAngle dataType="Bool">true</deriveAngle>
                                <gameobj dataType="ObjectRef">1138827133</gameobj>
                                <ignoreParent dataType="Bool">false</ignoreParent>
                                <parentTransform />
                                <pos dataType="Struct" type="Duality.Vector3" />
                                <posAbs dataType="Struct" type="Duality.Vector3" />
                                <scale dataType="Float">1</scale>
                                <scaleAbs dataType="Float">1</scaleAbs>
                                <vel dataType="Struct" type="Duality.Vector3" />
                                <velAbs dataType="Struct" type="Duality.Vector3" />
                              </item>
                              <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="4131902581">
                                <active dataType="Bool">true</active>
                                <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                                  <A dataType="Byte">255</A>
                                  <B dataType="Byte">255</B>
                                  <G dataType="Byte">255</G>
                                  <R dataType="Byte">255</R>
                                </colorTint>
                                <externalTilemap />
                                <gameobj dataType="ObjectRef">1138827133</gameobj>
                                <offset dataType="Float">-1</offset>
                                <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                                <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                                <tileDepthOffset dataType="Int">0</tileDepthOffset>
                                <tileDepthScale dataType="Float">0.01</tileDepthScale>
                                <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                              </item>
                              <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="3140679150">
                                <active dataType="Bool">true</active>
                                <gameobj dataType="ObjectRef">1138827133</gameobj>
                                <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="43799714" custom="true">
                                  <body>
                                    <version dataType="Int">3</version>
                                    <data dataType="Array" type="System.Byte[]" id="134889232">H4sIAAAAAAAEAO3FwQkAAAjEsPu6hftPqTiGpFDSSXqvXAAAAAAAAAAAAAAeMJzeYxIIHAAA</data>
                                  </body>
                                </tileData>
                                <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                                  <contentPath dataType="String">Data\Tilesets\flower_tileset.Tileset.res</contentPath>
                                </tileset>
                              </item>
                            </_items>
                            <_size dataType="Int">3</_size>
                            <_version dataType="Int">3</_version>
                          </compList>
                          <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="357002848" surrogate="true">
                            <header />
                            <body>
                              <keys dataType="Array" type="System.Object[]" id="3877217051">
                                <item dataType="ObjectRef">709499588</item>
                                <item dataType="ObjectRef">3270727190</item>
                                <item dataType="ObjectRef">2382229788</item>
                              </keys>
                              <values dataType="Array" type="System.Object[]" id="1675796328">
                                <item dataType="ObjectRef">3499142065</item>
                                <item dataType="ObjectRef">4131902581</item>
                                <item dataType="ObjectRef">3140679150</item>
                              </values>
                            </body>
                          </compMap>
                          <compTransform dataType="ObjectRef">3499142065</compTransform>
                          <identifier dataType="Struct" type="System.Guid" surrogate="true">
                            <header>
                              <data dataType="Array" type="System.Byte[]" id="3577784273">hlLNPSyfPE2gG+ExUr1Oxw==</data>
                            </header>
                            <body />
                          </identifier>
                          <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                          <name dataType="String">Layer1</name>
                          <parent dataType="ObjectRef">1100131266</parent>
                          <prefabLink />
                        </item>
                        <item dataType="Struct" type="Duality.GameObject" id="405071444">
                          <active dataType="Bool">true</active>
                          <children />
                          <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3542493108">
                            <_items dataType="Array" type="Duality.Component[]" id="142053284" length="4">
                              <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="2406923461">
                                <active dataType="Bool">true</active>
                                <gameobj dataType="ObjectRef">405071444</gameobj>
                                <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="1481162601" custom="true">
                                  <body>
                                    <version dataType="Int">3</version>
                                    <data dataType="Array" type="System.Byte[]" id="2839932174">H4sIAAAAAAAEAO3FwQkAAAjEsPu6hftPqTiGpFDSSXqvXAAAAAAAAAAAAAAeMJzeYxIIHAAA</data>
                                  </body>
                                </tileData>
                                <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                                  <contentPath dataType="String">Data\Tilesets\flower_tileset.Tileset.res</contentPath>
                                </tileset>
                              </item>
                              <item dataType="Struct" type="Duality.Components.Transform" id="2765386376">
                                <active dataType="Bool">true</active>
                                <angle dataType="Float">0</angle>
                                <angleAbs dataType="Float">0</angleAbs>
                                <angleVel dataType="Float">0</angleVel>
                                <angleVelAbs dataType="Float">0</angleVelAbs>
                                <deriveAngle dataType="Bool">true</deriveAngle>
                                <gameobj dataType="ObjectRef">405071444</gameobj>
                                <ignoreParent dataType="Bool">false</ignoreParent>
                                <parentTransform />
                                <pos dataType="Struct" type="Duality.Vector3" />
                                <posAbs dataType="Struct" type="Duality.Vector3" />
                                <scale dataType="Float">1</scale>
                                <scaleAbs dataType="Float">1</scaleAbs>
                                <vel dataType="Struct" type="Duality.Vector3" />
                                <velAbs dataType="Struct" type="Duality.Vector3" />
                              </item>
                              <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="3398146892">
                                <active dataType="Bool">true</active>
                                <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                                  <A dataType="Byte">255</A>
                                  <B dataType="Byte">255</B>
                                  <G dataType="Byte">255</G>
                                  <R dataType="Byte">255</R>
                                </colorTint>
                                <externalTilemap />
                                <gameobj dataType="ObjectRef">405071444</gameobj>
                                <offset dataType="Float">-2</offset>
                                <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                                <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                                <tileDepthOffset dataType="Int">0</tileDepthOffset>
                                <tileDepthScale dataType="Float">0.01</tileDepthScale>
                                <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                              </item>
                            </_items>
                            <_size dataType="Int">3</_size>
                            <_version dataType="Int">3</_version>
                          </compList>
                          <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1505814006" surrogate="true">
                            <header />
                            <body>
                              <keys dataType="Array" type="System.Object[]" id="705018526">
                                <item dataType="ObjectRef">2382229788</item>
                                <item dataType="ObjectRef">709499588</item>
                                <item dataType="ObjectRef">3270727190</item>
                              </keys>
                              <values dataType="Array" type="System.Object[]" id="1584620938">
                                <item dataType="ObjectRef">2406923461</item>
                                <item dataType="ObjectRef">2765386376</item>
                                <item dataType="ObjectRef">3398146892</item>
                              </values>
                            </body>
                          </compMap>
                          <compTransform dataType="ObjectRef">2765386376</compTransform>
                          <identifier dataType="Struct" type="System.Guid" surrogate="true">
                            <header>
                              <data dataType="Array" type="System.Byte[]" id="6961518">+q5iLUatlEiP35i9+7jhOg==</data>
                            </header>
                            <body />
                          </identifier>
                          <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                          <name dataType="String">Layer2</name>
                          <parent dataType="ObjectRef">1100131266</parent>
                          <prefabLink />
                        </item>
                        <item dataType="Struct" type="Duality.GameObject" id="1856755933">
                          <active dataType="Bool">true</active>
                          <children />
                          <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1881344529">
                            <_items dataType="Array" type="Duality.Component[]" id="2322705646" length="4">
                              <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="3858607950">
                                <active dataType="Bool">true</active>
                                <gameobj dataType="ObjectRef">1856755933</gameobj>
                                <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="699680194" custom="true">
                                  <body>
                                    <version dataType="Int">3</version>
                                    <data dataType="Array" type="System.Byte[]" id="543418896">H4sIAAAAAAAEAO3FwQkAAAjEsPu6hftPqTiGpFDSSXqvXAAAAAAAAAAAAAAeMJzeYxIIHAAA</data>
                                  </body>
                                </tileData>
                                <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                                  <contentPath dataType="String">Data\Tilesets\flower_tileset.Tileset.res</contentPath>
                                </tileset>
                              </item>
                              <item dataType="Struct" type="Duality.Components.Transform" id="4217070865">
                                <active dataType="Bool">true</active>
                                <angle dataType="Float">0</angle>
                                <angleAbs dataType="Float">0</angleAbs>
                                <angleVel dataType="Float">0</angleVel>
                                <angleVelAbs dataType="Float">0</angleVelAbs>
                                <deriveAngle dataType="Bool">true</deriveAngle>
                                <gameobj dataType="ObjectRef">1856755933</gameobj>
                                <ignoreParent dataType="Bool">false</ignoreParent>
                                <parentTransform />
                                <pos dataType="Struct" type="Duality.Vector3" />
                                <posAbs dataType="Struct" type="Duality.Vector3" />
                                <scale dataType="Float">1</scale>
                                <scaleAbs dataType="Float">1</scaleAbs>
                                <vel dataType="Struct" type="Duality.Vector3" />
                                <velAbs dataType="Struct" type="Duality.Vector3" />
                              </item>
                              <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="554864085">
                                <active dataType="Bool">true</active>
                                <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                                  <A dataType="Byte">255</A>
                                  <B dataType="Byte">255</B>
                                  <G dataType="Byte">255</G>
                                  <R dataType="Byte">255</R>
                                </colorTint>
                                <externalTilemap />
                                <gameobj dataType="ObjectRef">1856755933</gameobj>
                                <offset dataType="Float">-3</offset>
                                <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                                <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                                <tileDepthOffset dataType="Int">0</tileDepthOffset>
                                <tileDepthScale dataType="Float">0.01</tileDepthScale>
                                <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                              </item>
                            </_items>
                            <_size dataType="Int">3</_size>
                            <_version dataType="Int">3</_version>
                          </compList>
                          <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2893119904" surrogate="true">
                            <header />
                            <body>
                              <keys dataType="Array" type="System.Object[]" id="1290493883">
                                <item dataType="ObjectRef">2382229788</item>
                                <item dataType="ObjectRef">709499588</item>
                                <item dataType="ObjectRef">3270727190</item>
                              </keys>
                              <values dataType="Array" type="System.Object[]" id="289343528">
                                <item dataType="ObjectRef">3858607950</item>
                                <item dataType="ObjectRef">4217070865</item>
                                <item dataType="ObjectRef">554864085</item>
                              </values>
                            </body>
                          </compMap>
                          <compTransform dataType="ObjectRef">4217070865</compTransform>
                          <identifier dataType="Struct" type="System.Guid" surrogate="true">
                            <header>
                              <data dataType="Array" type="System.Byte[]" id="4183446065">XZn93VboSkGsD1sqJFjHyg==</data>
                            </header>
                            <body />
                          </identifier>
                          <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                          <name dataType="String">Layer3</name>
                          <parent dataType="ObjectRef">1100131266</parent>
                          <prefabLink />
                        </item>
                        <item dataType="Struct" type="Duality.GameObject" id="3081578079">
                          <active dataType="Bool">true</active>
                          <children />
                          <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1876316515">
                            <_items dataType="Array" type="Duality.Component[]" id="3001026278" length="4">
                              <item dataType="Struct" type="Duality.Plugins.Tilemaps.Tilemap" id="788462800">
                                <active dataType="Bool">true</active>
                                <gameobj dataType="ObjectRef">3081578079</gameobj>
                                <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="1936620" custom="true">
                                  <body>
                                    <version dataType="Int">3</version>
                                    <data dataType="Array" type="System.Byte[]" id="730263652">H4sIAAAAAAAEAO3FwQkAAAjEsPu6hftPqTiGpFDSSXqvXAAAAAAAAAAAAAAeMJzeYxIIHAAA</data>
                                  </body>
                                </tileData>
                                <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                                  <contentPath dataType="String">Data\Tilesets\flower_tileset.Tileset.res</contentPath>
                                </tileset>
                              </item>
                              <item dataType="Struct" type="Duality.Components.Transform" id="1146925715">
                                <active dataType="Bool">true</active>
                                <angle dataType="Float">0</angle>
                                <angleAbs dataType="Float">0</angleAbs>
                                <angleVel dataType="Float">0</angleVel>
                                <angleVelAbs dataType="Float">0</angleVelAbs>
                                <deriveAngle dataType="Bool">true</deriveAngle>
                                <gameobj dataType="ObjectRef">3081578079</gameobj>
                                <ignoreParent dataType="Bool">false</ignoreParent>
                                <parentTransform />
                                <pos dataType="Struct" type="Duality.Vector3" />
                                <posAbs dataType="Struct" type="Duality.Vector3" />
                                <scale dataType="Float">1</scale>
                                <scaleAbs dataType="Float">1</scaleAbs>
                                <vel dataType="Struct" type="Duality.Vector3" />
                                <velAbs dataType="Struct" type="Duality.Vector3" />
                              </item>
                              <item dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapRenderer" id="1779686231">
                                <active dataType="Bool">true</active>
                                <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                                  <A dataType="Byte">255</A>
                                  <B dataType="Byte">255</B>
                                  <G dataType="Byte">255</G>
                                  <R dataType="Byte">255</R>
                                </colorTint>
                                <externalTilemap />
                                <gameobj dataType="ObjectRef">3081578079</gameobj>
                                <offset dataType="Float">0</offset>
                                <origin dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
                                <tileDepthMode dataType="Enum" type="Duality.Plugins.Tilemaps.TileDepthOffsetMode" name="World" value="2" />
                                <tileDepthOffset dataType="Int">0</tileDepthOffset>
                                <tileDepthScale dataType="Float">0.01</tileDepthScale>
                                <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                              </item>
                            </_items>
                            <_size dataType="Int">3</_size>
                            <_version dataType="Int">3</_version>
                          </compList>
                          <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2786732280" surrogate="true">
                            <header />
                            <body>
                              <keys dataType="Array" type="System.Object[]" id="3707899401">
                                <item dataType="ObjectRef">2382229788</item>
                                <item dataType="ObjectRef">709499588</item>
                                <item dataType="ObjectRef">3270727190</item>
                              </keys>
                              <values dataType="Array" type="System.Object[]" id="394374720">
                                <item dataType="ObjectRef">788462800</item>
                                <item dataType="ObjectRef">1146925715</item>
                                <item dataType="ObjectRef">1779686231</item>
                              </values>
                            </body>
                          </compMap>
                          <compTransform dataType="ObjectRef">1146925715</compTransform>
                          <identifier dataType="Struct" type="System.Guid" surrogate="true">
                            <header>
                              <data dataType="Array" type="System.Byte[]" id="3858577323">l2TAPW2P+EKEqAWc1Xv6MA==</data>
                            </header>
                            <body />
                          </identifier>
                          <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                          <name dataType="String">Layer0</name>
                          <parent dataType="ObjectRef">1100131266</parent>
                          <prefabLink />
                        </item>
                      </_items>
                      <_size dataType="Int">5</_size>
                      <_version dataType="Int">9</_version>
                    </children>
                    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2525336030">
                      <_items dataType="Array" type="Duality.Component[]" id="2175467722" length="4">
                        <item dataType="Struct" type="TilemapJam.TilemapHolder" id="209505488">
                          <_x003C_Background_x003E_k__BackingField dataType="ObjectRef">2892344289</_x003C_Background_x003E_k__BackingField>
                          <_x003C_Layer0_x003E_k__BackingField dataType="ObjectRef">788462800</_x003C_Layer0_x003E_k__BackingField>
                          <_x003C_Layer1_x003E_k__BackingField dataType="ObjectRef">3140679150</_x003C_Layer1_x003E_k__BackingField>
                          <_x003C_Layer2_x003E_k__BackingField dataType="ObjectRef">2406923461</_x003C_Layer2_x003E_k__BackingField>
                          <_x003C_Layer3_x003E_k__BackingField dataType="ObjectRef">3858607950</_x003C_Layer3_x003E_k__BackingField>
                          <active dataType="Bool">true</active>
                          <gameobj dataType="ObjectRef">1100131266</gameobj>
                        </item>
                      </_items>
                      <_size dataType="Int">1</_size>
                      <_version dataType="Int">5</_version>
                    </compList>
                    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1013731316" surrogate="true">
                      <header />
                      <body>
                        <keys dataType="Array" type="System.Object[]" id="683890760">
                          <item dataType="Type" id="4146343020" value="TilemapJam.TilemapHolder" />
                        </keys>
                        <values dataType="Array" type="System.Object[]" id="2872637662">
                          <item dataType="ObjectRef">209505488</item>
                        </values>
                      </body>
                    </compMap>
                    <compTransform />
                    <identifier dataType="Struct" type="System.Guid" surrogate="true">
                      <header>
                        <data dataType="Array" type="System.Byte[]" id="4026072756">v+jhCHMCBkOodUtO5fgfew==</data>
                      </header>
                      <body />
                    </identifier>
                    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                    <name dataType="String">Tilemaps</name>
                    <parent />
                    <prefabLink />
                  </parent>
                  <prefabLink />
                </gameobj>
                <tileData dataType="Struct" type="Duality.Plugins.Tilemaps.TilemapData" id="384100194" custom="true">
                  <body>
                    <version dataType="Int">3</version>
                    <data dataType="Array" type="System.Byte[]" id="2800581520">H4sIAAAAAAAEAO3FAQkAAAgEsQeL2D+lYgzZwbFO0nvlAgAAAAAAAAAAAPCAATzVOaMIHAAA</data>
                  </body>
                </tileData>
                <tileset dataType="Struct" type="Duality.ContentRef`1[[Duality.Plugins.Tilemaps.Tileset]]">
                  <contentPath dataType="String">Data\Tilesets\tileset.Tileset.res</contentPath>
                </tileset>
              </_x003C_tilemap_x003E_k__BackingField>
              <active dataType="Bool">true</active>
              <gameobj dataType="Struct" type="Duality.GameObject" id="1715788091">
                <active dataType="Bool">true</active>
                <children />
                <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="16841568">
                  <_items dataType="Array" type="Duality.Component[]" id="1539707100" length="4">
                    <item dataType="ObjectRef">1169164951</item>
                  </_items>
                  <_size dataType="Int">1</_size>
                  <_version dataType="Int">1</_version>
                </compList>
                <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4174235790" surrogate="true">
                  <header />
                  <body>
                    <keys dataType="Array" type="System.Object[]" id="2873621426">
                      <item dataType="Type" id="2993415888" value="TilemapJam.DecayTile" />
                    </keys>
                    <values dataType="Array" type="System.Object[]" id="1624805962">
                      <item dataType="ObjectRef">1169164951</item>
                    </values>
                  </body>
                </compMap>
                <compTransform />
                <identifier dataType="Struct" type="System.Guid" surrogate="true">
                  <header>
                    <data dataType="Array" type="System.Byte[]" id="4015259138">hJ1LkA+2yESl70D2jjkndw==</data>
                  </header>
                  <body />
                </identifier>
                <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                <name dataType="String">ToDust</name>
                <parent dataType="Struct" type="Duality.GameObject" id="3310623186">
                  <active dataType="Bool">true</active>
                  <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="3650495686">
                    <_items dataType="Array" type="Duality.GameObject[]" id="2653853952" length="4">
                      <item dataType="ObjectRef">1715788091</item>
                      <item dataType="Struct" type="Duality.GameObject" id="4270991038">
                        <active dataType="Bool">true</active>
                        <children />
                        <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="128024670">
                          <_items dataType="Array" type="Duality.Component[]" id="1312441616" length="4">
                            <item dataType="Struct" type="TilemapJam.DecayTile" id="3724367898">
                              <_x003C_decayTime_x003E_k__BackingField dataType="Float">12000</_x003C_decayTime_x003E_k__BackingField>
                              <_x003C_defaultIndex_x003E_k__BackingField dataType="Int">3</_x003C_defaultIndex_x003E_k__BackingField>
                              <_x003C_tilemap_x003E_k__BackingField dataType="ObjectRef">2892344289</_x003C_tilemap_x003E_k__BackingField>
                              <active dataType="Bool">true</active>
                              <gameobj dataType="ObjectRef">4270991038</gameobj>
                              <timers dataType="Struct" type="Duality.Grid`1[[TilemapJam.Timer]]" id="3760862290">
                                <height dataType="Int">32</height>
                                <sequence dataType="Struct" type="Duality.RawList`1[[TilemapJam.Timer]]" id="688183632">
                                  <count dataType="Int">1024</count>
                                  <data dataType="Array" type="TilemapJam.Timer[]" id="22698940" length="1024" />
                                </sequence>
                                <width dataType="Int">32</width>
                              </timers>
                            </item>
                          </_items>
                          <_size dataType="Int">1</_size>
                          <_version dataType="Int">1</_version>
                        </compList>
                        <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="987462922" surrogate="true">
                          <header />
                          <body>
                            <keys dataType="Array" type="System.Object[]" id="299114364">
                              <item dataType="ObjectRef">2993415888</item>
                            </keys>
                            <values dataType="Array" type="System.Object[]" id="3992830102">
                              <item dataType="ObjectRef">3724367898</item>
                            </values>
                          </body>
                        </compMap>
                        <compTransform />
                        <identifier dataType="Struct" type="System.Guid" surrogate="true">
                          <header>
                            <data dataType="Array" type="System.Byte[]" id="1895739176">w252Q+Tmw0iSfVvOdBt6vg==</data>
                          </header>
                          <body />
                        </identifier>
                        <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                        <name dataType="String">ToGrass</name>
                        <parent dataType="ObjectRef">3310623186</parent>
                        <prefabLink />
                      </item>
                    </_items>
                    <_size dataType="Int">2</_size>
                    <_version dataType="Int">2</_version>
                  </children>
                  <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1700908730">
                    <_items dataType="Array" type="Duality.Component[]" id="2244318516" length="4">
                      <item dataType="Struct" type="TilemapJam.Decayers" id="3802933702">
                        <_x003C_ToDust_x003E_k__BackingField dataType="ObjectRef">1169164951</_x003C_ToDust_x003E_k__BackingField>
                        <_x003C_ToGrass_x003E_k__BackingField dataType="ObjectRef">3724367898</_x003C_ToGrass_x003E_k__BackingField>
                        <active dataType="Bool">true</active>
                        <gameobj dataType="ObjectRef">3310623186</gameobj>
                      </item>
                    </_items>
                    <_size dataType="Int">1</_size>
                    <_version dataType="Int">1</_version>
                  </compList>
                  <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="776489926" surrogate="true">
                    <header />
                    <body>
                      <keys dataType="Array" type="System.Object[]" id="1918768640">
                        <item dataType="Type" id="1142824092" value="TilemapJam.Decayers" />
                      </keys>
                      <values dataType="Array" type="System.Object[]" id="4284461006">
                        <item dataType="ObjectRef">3802933702</item>
                      </values>
                    </body>
                  </compMap>
                  <compTransform />
                  <identifier dataType="Struct" type="System.Guid" surrogate="true">
                    <header>
                      <data dataType="Array" type="System.Byte[]" id="2358535836">xVH9o6mR40ic2PeoLQ9w9A==</data>
                    </header>
                    <body />
                  </identifier>
                  <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                  <name dataType="String">Decayers</name>
                  <parent />
                  <prefabLink />
                </parent>
                <prefabLink />
              </gameobj>
              <timers dataType="Struct" type="Duality.Grid`1[[TilemapJam.Timer]]" id="2739252653">
                <height dataType="Int">32</height>
                <sequence dataType="Struct" type="Duality.RawList`1[[TilemapJam.Timer]]" id="3725155686">
                  <count dataType="Int">1024</count>
                  <data dataType="Array" type="TilemapJam.Timer[]" id="393542528" length="1024" />
                </sequence>
                <width dataType="Int">32</width>
              </timers>
            </_x003C_decayerToDust_x003E_k__BackingField>
            <_x003C_decayerToGrass_x003E_k__BackingField dataType="ObjectRef">3724367898</_x003C_decayerToGrass_x003E_k__BackingField>
            <_x003C_player_x003E_k__BackingField dataType="ObjectRef">1916835677</_x003C_player_x003E_k__BackingField>
            <_x003C_tilemap_x003E_k__BackingField dataType="ObjectRef">2892344289</_x003C_tilemap_x003E_k__BackingField>
            <_x003C_tilemapRenderer_x003E_k__BackingField dataType="ObjectRef">3883567720</_x003C_tilemapRenderer_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1207237209</gameobj>
            <rects dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Rect]]" id="1220160542">
              <_items dataType="Array" type="Duality.Rect[]" id="3830394512" length="0" />
              <_size dataType="Int">0</_size>
              <_version dataType="Int">195</_version>
            </rects>
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">2</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2506322856" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4056664337">
            <item dataType="Type" id="2912378606" value="TilemapJam.PlayerController" />
            <item dataType="Type" id="389451210" value="TilemapJam.PlayerAttack" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="1767825312">
            <item dataType="ObjectRef">3758567358</item>
            <item dataType="ObjectRef">1938712298</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3404007555">jbdf/auUy024ay5yOy/YHw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Player</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">1100131266</item>
    <item dataType="ObjectRef">3310623186</item>
    <item dataType="Struct" type="Duality.GameObject" id="2498202634">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3098409556">
        <_items dataType="Array" type="Duality.Component[]" id="4175584484" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="563550270">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2498202634</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3" />
            <posAbs dataType="Struct" type="Duality.Vector3" />
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.SoundEmitter" id="247127225">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2498202634</gameobj>
            <sources dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.SoundEmitter+Source]]" id="1006593349">
              <_items dataType="Array" type="Duality.Components.SoundEmitter+Source[]" id="3745433814" length="4">
                <item dataType="Struct" type="Duality.Components.SoundEmitter+Source" id="2643945760">
                  <looped dataType="Bool">true</looped>
                  <lowpass dataType="Float">1</lowpass>
                  <offset dataType="Struct" type="Duality.Vector3" />
                  <paused dataType="Bool">false</paused>
                  <pitch dataType="Float">1</pitch>
                  <sound dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Sound]]">
                    <contentPath dataType="String">Data\Sound\Tchaikovsky_-_Waltz_of_the_Flowers.Sound.res</contentPath>
                  </sound>
                  <volume dataType="Float">1</volume>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
              <_version dataType="Int">1</_version>
            </sources>
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">8</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2802951094" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="292786686">
            <item dataType="ObjectRef">709499588</item>
            <item dataType="Type" id="987324816" value="Duality.Components.SoundEmitter" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2767404938">
            <item dataType="ObjectRef">563550270</item>
            <item dataType="ObjectRef">247127225</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">563550270</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="841028494">Y83//Bi4/kGQ4NA1Ozr2lw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">SoundEmitter</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2871349540">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4006120090">
        <_items dataType="Array" type="Duality.Component[]" id="2512739200" length="4">
          <item dataType="Struct" type="TilemapJam.Spawner" id="2255021154">
            <_x003C_bunnyPrefab_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
              <contentPath dataType="String">Data\Prefabs\Bunny.Prefab.res</contentPath>
            </_x003C_bunnyPrefab_x003E_k__BackingField>
            <_x003C_SpawnPerSecond_x003E_k__BackingField dataType="Float">1</_x003C_SpawnPerSecond_x003E_k__BackingField>
            <_x003C_spawnScale_x003E_k__BackingField dataType="Float">1.02</_x003C_spawnScale_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2871349540</gameobj>
            <random dataType="Struct" type="System.Random" id="642289498">
              <inext dataType="Int">0</inext>
              <inextp dataType="Int">21</inextp>
              <SeedArray dataType="Array" type="System.Int32[]" id="338862592">0, 596281418, 1460095081, 1900343645, 765280395, 1742457871, 56466606, 1080179736, 208235492, 1455835072, 1850925498, 2033795549, 501652656, 1435611569, 738352205, 1400203067, 139144544, 209466081, 1322734683, 856048280, 738533332, 1644219719, 1229803331, 353568624, 107427308, 1867407358, 778574014, 1595240110, 1162804765, 289244711, 937493774, 792931524, 1738082406, 1918787828, 2042940790, 781526125, 1466277276, 1087431582, 139320700, 1369490816, 1098338383, 1088633785, 1701456209, 791202532, 1301471837, 478285792, 772827706, 2111577376, 256497812, 294009632, 1560105131, 1227678005, 185630791, 293813939, 174936435, 1301511925</SeedArray>
            </random>
            <scaleTimer />
            <timer />
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1534528314" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3353563360">
            <item dataType="Type" id="1645293532" value="TilemapJam.Spawner" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2694121358">
            <item dataType="ObjectRef">2255021154</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3271004156">4BFnC0K9QkCSVB2y114bhg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Spawner</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">2786082065</item>
    <item dataType="ObjectRef">3327357866</item>
    <item dataType="ObjectRef">890492272</item>
    <item dataType="ObjectRef">1138827133</item>
    <item dataType="ObjectRef">405071444</item>
    <item dataType="ObjectRef">1856755933</item>
    <item dataType="ObjectRef">3081578079</item>
    <item dataType="ObjectRef">1715788091</item>
    <item dataType="ObjectRef">4270991038</item>
    <item dataType="ObjectRef">3566866563</item>
    <item dataType="ObjectRef">1534937917</item>
    <item dataType="ObjectRef">573316038</item>
    <item dataType="ObjectRef">4145412219</item>
    <item dataType="ObjectRef">880469936</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
