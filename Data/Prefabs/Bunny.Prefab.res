<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <assetInfo dataType="Struct" type="Duality.Editor.AssetManagement.AssetInfo" id="427169525">
    <customData />
    <importerId />
    <sourceFileHint />
  </assetInfo>
  <objTree dataType="Struct" type="Duality.GameObject" id="2593175096">
    <active dataType="Bool">true</active>
    <children />
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="139886255">
      <_items dataType="Array" type="Duality.Component[]" id="1251173358" length="8">
        <item dataType="Struct" type="Duality.Components.Transform" id="658522732">
          <active dataType="Bool">true</active>
          <angle dataType="Float">0.0112183746</angle>
          <angleAbs dataType="Float">0.0112183746</angleAbs>
          <angleVel dataType="Float">0</angleVel>
          <angleVelAbs dataType="Float">0</angleVelAbs>
          <deriveAngle dataType="Bool">true</deriveAngle>
          <gameobj dataType="ObjectRef">2593175096</gameobj>
          <ignoreParent dataType="Bool">false</ignoreParent>
          <parentTransform />
          <pos dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">-3.2673378</X>
            <Y dataType="Float">14.3781815</Y>
            <Z dataType="Float">0</Z>
          </pos>
          <posAbs dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">-3.2673378</X>
            <Y dataType="Float">14.3781815</Y>
            <Z dataType="Float">0</Z>
          </posAbs>
          <scale dataType="Float">1</scale>
          <scaleAbs dataType="Float">1</scaleAbs>
          <vel dataType="Struct" type="Duality.Vector3" />
          <velAbs dataType="Struct" type="Duality.Vector3" />
        </item>
        <item dataType="Struct" type="TilemapJam.CustomActorRenderer" id="3782550639">
          <_x003C_flip_x003E_k__BackingField dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
          <active dataType="Bool">true</active>
          <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
            <A dataType="Byte">255</A>
            <B dataType="Byte">255</B>
            <G dataType="Byte">255</G>
            <R dataType="Byte">255</R>
          </colorTint>
          <customMat />
          <depthScale dataType="Float">0.01</depthScale>
          <gameobj dataType="ObjectRef">2593175096</gameobj>
          <height dataType="Float">0</height>
          <isVertical dataType="Bool">true</isVertical>
          <offset dataType="Float">-1</offset>
          <rect dataType="Struct" type="Duality.Rect">
            <H dataType="Float">32</H>
            <W dataType="Float">32</W>
            <X dataType="Float">-19</X>
            <Y dataType="Float">-28</Y>
          </rect>
          <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
            <contentPath dataType="String">Data\Graphics\rabbit.Material.res</contentPath>
          </sharedMat>
          <spriteIndex dataType="Int">-1</spriteIndex>
          <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
        </item>
        <item dataType="Struct" type="TilemapJam.JumpAnimation" id="1377702760">
          <_x003C_Duration_x003E_k__BackingField dataType="Float">1</_x003C_Duration_x003E_k__BackingField>
          <_x003C_MaxHeight_x003E_k__BackingField dataType="Float">30</_x003C_MaxHeight_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">2593175096</gameobj>
          <timeElapsed dataType="Float">0</timeElapsed>
          <x dataType="Float">0</x>
        </item>
        <item dataType="Struct" type="TilemapJam.Bunny" id="375486482">
          <_x003C_attack_x003E_k__BackingField dataType="Int">5</_x003C_attack_x003E_k__BackingField>
          <_x003C_attackCooldown_x003E_k__BackingField dataType="Float">500</_x003C_attackCooldown_x003E_k__BackingField>
          <_x003C_attackRadius_x003E_k__BackingField dataType="Float">0.5</_x003C_attackRadius_x003E_k__BackingField>
          <_x003C_currentHealth_x003E_k__BackingField dataType="Int">10</_x003C_currentHealth_x003E_k__BackingField>
          <_x003C_IsTracking_x003E_k__BackingField dataType="Bool">true</_x003C_IsTracking_x003E_k__BackingField>
          <_x003C_maxSeed_x003E_k__BackingField dataType="Int">3</_x003C_maxSeed_x003E_k__BackingField>
          <_x003C_maxSeedDist_x003E_k__BackingField dataType="Float">50</_x003C_maxSeedDist_x003E_k__BackingField>
          <_x003C_minSeedDist_x003E_k__BackingField dataType="Float">15</_x003C_minSeedDist_x003E_k__BackingField>
          <_x003C_seedPrefab_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
            <contentPath dataType="String">Data\Prefabs\Seed.Prefab.res</contentPath>
          </_x003C_seedPrefab_x003E_k__BackingField>
          <_x003C_target_x003E_k__BackingField />
          <_x003C_tileSize_x003E_k__BackingField dataType="Float">16</_x003C_tileSize_x003E_k__BackingField>
          <_x003C_totalHealth_x003E_k__BackingField dataType="Int">10</_x003C_totalHealth_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">2593175096</gameobj>
          <timer />
        </item>
        <item dataType="Struct" type="TilemapJam.CharacterController" id="1182652907">
          <_x003C_defaultMaxSpeed_x003E_k__BackingField dataType="Float">100</_x003C_defaultMaxSpeed_x003E_k__BackingField>
          <_x003C_maxSpeed_x003E_k__BackingField dataType="Float">0</_x003C_maxSpeed_x003E_k__BackingField>
          <accelValue dataType="Float">500</accelValue>
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">2593175096</gameobj>
          <isAttacking dataType="Bool">false</isAttacking>
        </item>
      </_items>
      <_size dataType="Int">5</_size>
      <_version dataType="Int">5</_version>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2137773216" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Object[]" id="1018079621">
          <item dataType="Type" id="3719504214" value="Duality.Components.Transform" />
          <item dataType="Type" id="4018643162" value="TilemapJam.CustomActorRenderer" />
          <item dataType="Type" id="3037376886" value="TilemapJam.JumpAnimation" />
          <item dataType="Type" id="3246726778" value="TilemapJam.Bunny" />
          <item dataType="Type" id="2645157526" value="TilemapJam.CharacterController" />
        </keys>
        <values dataType="Array" type="System.Object[]" id="3909315240">
          <item dataType="ObjectRef">658522732</item>
          <item dataType="ObjectRef">3782550639</item>
          <item dataType="ObjectRef">1377702760</item>
          <item dataType="ObjectRef">375486482</item>
          <item dataType="ObjectRef">1182652907</item>
        </values>
      </body>
    </compMap>
    <compTransform dataType="ObjectRef">658522732</compTransform>
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="3773545103">wPCJPhl+dEalmNqXY+4hjA==</data>
      </header>
      <body />
    </identifier>
    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
    <name dataType="String">Bunny</name>
    <parent />
    <prefabLink />
  </objTree>
</root>
<!-- XmlFormatterBase Document Separator -->
