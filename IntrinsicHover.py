import sublime
import sublime_plugin

import webbrowser


IntrinsicList = {
	"abort": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/abort"),
	"abs": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-abs"),
	"acos": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-acos"),
	"all": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-all"),
	"AllMemoryBarrier": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/allmemorybarrier"),
	"AllMemoryBarrierWithGroupSync": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/allmemorybarrierwithgroupsync"),
	"any": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-any"),
	"asdouble": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/asdouble"),
	"asfloat": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-asfloat"),
	"asin": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-asin"),
	"asint": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-asint"),
	"asuint": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-asuint"),
	"atan": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-atan"),
	"atan2": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-atan2"),
	"ceil": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-ceil"),
	"CheckAccessFullyMapped": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/checkaccessfullymapped"),
	"clamp": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-clamp"),
	"clip": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-clip"),
	"cos": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-cos"),
	"cosh": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-cosh"),
	"countbits": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/countbits"),
	"cross": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-cross"),
	"D3DCOLORtoUBYTE4": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-d3dcolortoubyte4"),
	"ddx": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-ddx"),
	"ddx_coarse": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/ddx-coarse"),
	"ddx_fine": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/ddx-fine"),
	"ddy": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-ddy"),
	"ddy_coarse": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/ddy-coarse"),
	"ddy_fine": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/ddy-fine"),
	"degrees": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-degrees"),
	"determinant": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-determinant"),
	"DeviceMemoryBarrier": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/devicememorybarrier"),
	"DeviceMemoryBarrierWithGroupSync": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/devicememorybarrierwithgroupsync"),
	"distance": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-distance"),
	"dot": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-dot"),
	"dst": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dst"),
	"errorf": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/errorf"),
	"EvaluateAttributeAtCentroid": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/evaluateattributeatcentroid"),
	"EvaluateAttributeAtSample": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/evaluateattributeatsample"),
	"EvaluateAttributeSnapped": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/evaluateattributesnapped"),
	"exp": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-exp"),
	"exp2": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-exp2"),
	"f16tof32": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/f16tof32"),
	"f32tof16": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/f32tof16"),
	"faceforward": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-faceforward"),
	"firstbithigh": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/firstbithigh"),
	"firstbitlow": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/firstbitlow"),
	"floor": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-floor"),
	"fma": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-fma"),
	"fmod": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-fmod"),
	"frac": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-frac"),
	"frexp": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-frexp"),
	"fwidth": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-fwidth"),
	"GetRenderTargetSampleCount": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-getrendertargetsamplecount"),
	"GetRenderTargetSamplePosition": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-getrendertargetsampleposition"),
	"GroupMemoryBarrier": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/groupmemorybarrier"),
	"GroupMemoryBarrierWithGroupSync": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/groupmemorybarrierwithgroupsync"),
	"InterlockedAdd": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/interlockedadd"),
	"InterlockedAnd": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/interlockedand"),
	"InerlockedCompareExchange": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/interlockedcompareexchange"),
	"InterlockedCompareStore": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/interlockedcomparestore"),
	"InterlockedExchange": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/interlockedexchange"),
	"InterlockedMax": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/interlockedmax"),
	"InterlockedMin": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/interlockedmin"),
	"InterlockedOr": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/interlockedor"),
	"InterlockedXor": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/interlockedxor"),
	"isfinite": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-isfinite"),
	"isinf": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-isinf"),
	"isnan": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-isnan"),
	"ldexp": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-ldexp"),
	"length": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-length"),
	"lerp": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-lerp"),
	"lit": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-lit"),
	"log": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-log"),
	"log10": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-log10"),
	"log2": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-log2"),
	"mad": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/mad"),
	"max": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-max"),
	"min": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-min"),
	"modf": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-modf"),
	"msad4": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-msad4"),
	"mul": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-mul"),
	"noise": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-noise"),
	"normalize": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-normalize"),
	"pow": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-pow"),
	"printf": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/printf"),
	"Process2DQuadTessFactorsAvg": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/process2dquadtessfactorsavg"),
	"Process2DQuadTessFactorsMax": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/process2dquadtessfactorsmax"),
	"Process2DQuadTessFactorsMin": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/process2dquadtessfactorsmin"),
	"ProcessIsolineTessFactors": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/processisolinetessfactors"),
	"ProcessQuadTessFactorsAvg": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/processquadtessfactorsavg"),
	"ProcessQuadTessFactorsMax": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/processquadtessfactorsmax"),
	"ProcessQuadTessFactorsMin": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/processquadtessfactorsmin"),
	"ProcessTriTessFactorsAvg": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/processtritessfactorsavg"),
	"ProcessTriTessFactorsMax": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/processtritessfactorsmax"),
	"ProcessTriTessFactorsMin": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/processtritessfactorsmin"),
	"QuadReadAcrossDiagonal": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/quadreadaccrossdiagonal"),
	"QuadReadLaneAt": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/quadreadlaneat"),
	"QuadReadAcrossX": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/quadswapx"),
	"QuadReadAcrossY": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/quadswapy"),
	"radians": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-radians"),
	"rcp": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/rcp"),
	"reflect": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-reflect"),
	"refract": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-refract"),
	"reversebits": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/reversebits"),
	"round": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-round"),
	"rsqrt": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-rsqrt"),
	"saturate": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-saturate"),
	"sign": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-sign"),
	"sin": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-sin"),
	"sincos": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-sincos"),
	"sinh": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-sinh"),
	"smoothstep": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-smoothstep"),
	"sqrt": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-sqrt"),
	"step": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-step"),
	"tan": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-tan"),
	"tanh": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-tanh"),
	"transpose": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-transpose"),
	"trunc": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/dx-graphics-hlsl-trunc"),
	"WaveActiveAllEqual": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/waveactiveallequal"),
	"WaveActiveBitAnd": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/waveallbitand"),
	"WaveActiveBitOr": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/waveallbitor"),
	"WaveActiveBitXor": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/waveallbitxor"),
	"WaveActiveCountBits": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/waveactivecountbits"),
	"WaveActiveMax": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/waveallmax"),
	"WaveActiveMin": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/waveallmin"),
	"WaveActiveProduct": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/waveallproduct"),
	"WaveActiveSum": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/waveallsum"),
	"WaveActiveAllTrue": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/wavealltrue"),
	"WaveActiveAnyTrue": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/waveanytrue"),
	"WaveActiveBallot": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/waveballot"),
	"WaveGetLaneCount": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/wavegetlanecount"),
	"WaveGetLaneIndex": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/wavegetlaneindex"),
	"WaveIsFirstLane": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/waveisfirstlane"),
	"WavePrefixCountBits": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/waveprefixcountbytes"),
	"WavePrefixProduct": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/waveprefixproduct"),
	"WavePrefixSum": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/waveprefixsum"),
	"WaveReadLaneFirst": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/wavereadfirstlane"),
	"WaveReadLaneAt": ("https://docs.microsoft.com/en-us/windows/desktop/direct3dhlsl/wavereadlaneat")
}


def OpenMSDNLink(text):
	openStyle = 2
	openStyleSetting = sublime.load_settings("HLSL Syntax.sublime-settings").get("IntrinsicHoverLinkOpenStyle", "new_tab")
	if openStyleSetting == "same_window":
		openStyle = 0
	elif openStyleSetting == "new_window":
		openStyle = 1

	webbrowser.open(text, openStyle)


class IntrinsicHover(sublime_plugin.EventListener):
	def on_hover(sef, view, point, hover_zone):
		scopesStr = view.scope_name(point)
		scopeList = scopesStr.split(' ')
		for scope in scopeList:
			if scope == "keyword.function.intrinsic.hlsl":
				posWord = view.word(point)
				intrinsicWord = view.substr(posWord)
				if intrinsicWord in IntrinsicList:
					url = IntrinsicList[intrinsicWord]
					hoverBody = """
						<body id=show-intrinsic>
							<style>
								body {
									font-family: system;
								}
								p {
									font-size: 1.05rem;
									margin: 0;
								}
							</style>
							<p>%s - <a href="%s">MSDN Link</a></p>
						</body>
					""" % (intrinsicWord, url)

					view.show_popup(hoverBody, flags=sublime.HIDE_ON_MOUSE_MOVE_AWAY, location=point, max_width=1024, on_navigate=lambda x: OpenMSDNLink(x))
					return