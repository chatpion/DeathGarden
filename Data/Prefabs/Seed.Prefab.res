<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <assetInfo dataType="Struct" type="Duality.Editor.AssetManagement.AssetInfo" id="427169525">
    <customData />
    <importerId />
    <sourceFileHint />
  </assetInfo>
  <objTree dataType="Struct" type="Duality.GameObject" id="1910850898">
    <active dataType="Bool">true</active>
    <children />
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="622436661">
      <_items dataType="Array" type="Duality.Component[]" id="2506767350" length="4">
        <item dataType="Struct" type="TilemapJam.Seed" id="4138446639">
          <_x003C_maxDuration_x003E_k__BackingField dataType="Float">3000</_x003C_maxDuration_x003E_k__BackingField>
          <_x003C_plantPrefab_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
            <contentPath dataType="String">Data\Prefabs\Plant.Prefab.res</contentPath>
          </_x003C_plantPrefab_x003E_k__BackingField>
          <_x003C_tilemap_x003E_k__BackingField />
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">1910850898</gameobj>
        </item>
        <item dataType="Struct" type="Duality.Components.Transform" id="4271165830">
          <active dataType="Bool">true</active>
          <angle dataType="Float">0</angle>
          <angleAbs dataType="Float">0</angleAbs>
          <angleVel dataType="Float">0</angleVel>
          <angleVelAbs dataType="Float">0</angleVelAbs>
          <deriveAngle dataType="Bool">true</deriveAngle>
          <gameobj dataType="ObjectRef">1910850898</gameobj>
          <ignoreParent dataType="Bool">false</ignoreParent>
          <parentTransform />
          <pos dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">34.18985</X>
            <Y dataType="Float">6.74493647</Y>
            <Z dataType="Float">0</Z>
          </pos>
          <posAbs dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">34.18985</X>
            <Y dataType="Float">6.74493647</Y>
            <Z dataType="Float">0</Z>
          </posAbs>
          <scale dataType="Float">1</scale>
          <scaleAbs dataType="Float">1</scaleAbs>
          <vel dataType="Struct" type="Duality.Vector3" />
          <velAbs dataType="Struct" type="Duality.Vector3" />
        </item>
        <item dataType="Struct" type="TilemapJam.CustomActorRenderer" id="3100226441">
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
          <gameobj dataType="ObjectRef">1910850898</gameobj>
          <height dataType="Float">0</height>
          <isVertical dataType="Bool">true</isVertical>
          <offset dataType="Float">-1</offset>
          <rect dataType="Struct" type="Duality.Rect">
            <H dataType="Float">10</H>
            <W dataType="Float">10</W>
            <X dataType="Float">-5</X>
            <Y dataType="Float">-5</Y>
          </rect>
          <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
            <contentPath dataType="String">Data\Graphics\seed.Material.res</contentPath>
          </sharedMat>
          <spriteIndex dataType="Int">-1</spriteIndex>
          <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
        </item>
      </_items>
      <_size dataType="Int">3</_size>
      <_version dataType="Int">3</_version>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="547145800" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Object[]" id="4077405983">
          <item dataType="Type" id="898389870" value="TilemapJam.Seed" />
          <item dataType="Type" id="1487217098" value="Duality.Components.Transform" />
          <item dataType="Type" id="1884676446" value="TilemapJam.CustomActorRenderer" />
        </keys>
        <values dataType="Array" type="System.Object[]" id="3347139104">
          <item dataType="ObjectRef">4138446639</item>
          <item dataType="ObjectRef">4271165830</item>
          <item dataType="ObjectRef">3100226441</item>
        </values>
      </body>
    </compMap>
    <compTransform dataType="ObjectRef">4271165830</compTransform>
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="151886221">9ADjLgax/EWPR+5TDOw+Wg==</data>
      </header>
      <body />
    </identifier>
    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
    <name dataType="String">Seed</name>
    <parent />
    <prefabLink />
  </objTree>
</root>
<!-- XmlFormatterBase Document Separator -->
