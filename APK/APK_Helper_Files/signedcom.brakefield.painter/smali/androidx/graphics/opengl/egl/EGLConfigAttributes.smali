.class public final Landroidx/graphics/opengl/egl/EGLConfigAttributes;
.super Ljava/lang/Object;
.source "EGLConfigAttributes.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;,
        Landroidx/graphics/opengl/egl/EGLConfigAttributes$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEGLConfigAttributes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EGLConfigAttributes.kt\nandroidx/graphics/opengl/egl/EGLConfigAttributes\n+ 2 EGLConfigAttributes.kt\nandroidx/graphics/opengl/egl/EGLConfigAttributesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,208:1\n47#2:209\n47#2:211\n47#2:213\n1#3:210\n1#3:212\n1#3:214\n*S KotlinDebug\n*F\n+ 1 EGLConfigAttributes.kt\nandroidx/graphics/opengl/egl/EGLConfigAttributes\n*L\n160#1:209\n178#1:211\n195#1:213\n160#1:210\n178#1:212\n195#1:214\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\t\u0018\u0000 \u000b2\u00020\u0001:\u0002\n\u000bB\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\u0003R\u001c\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/graphics/opengl/egl/EGLConfigAttributes;",
        "",
        "attrs",
        "",
        "([I)V",
        "getAttrs$annotations",
        "()V",
        "getAttrs",
        "()[I",
        "toArray",
        "Builder",
        "Companion",
        "graphics-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/graphics/opengl/egl/EGLConfigAttributes$Companion;

.field public static final EGL_COLOR_COMPONENT_TYPE_EXT:I = 0x3339

.field public static final EGL_COLOR_COMPONENT_TYPE_FIXED_EXT:I = 0x333a

.field public static final EGL_COLOR_COMPONENT_TYPE_FLOAT_EXT:I = 0x333b

.field public static final RGBA_1010102:Landroidx/graphics/opengl/egl/EGLConfigAttributes;

.field public static final RGBA_8888:Landroidx/graphics/opengl/egl/EGLConfigAttributes;

.field public static final RGBA_F16:Landroidx/graphics/opengl/egl/EGLConfigAttributes;


# instance fields
.field private final attrs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/opengl/egl/EGLConfigAttributes;->Companion:Landroidx/graphics/opengl/egl/EGLConfigAttributes$Companion;

    .line 209
    new-instance v0, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;

    invoke-direct {v0}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;-><init>()V

    const/16 v1, 0x3040

    const/4 v2, 0x4

    .line 161
    invoke-virtual {v0, v1, v2}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    const/16 v3, 0x3024

    const/16 v4, 0x8

    .line 162
    invoke-virtual {v0, v3, v4}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    const/16 v5, 0x3023

    .line 163
    invoke-virtual {v0, v5, v4}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    const/16 v6, 0x3022

    .line 164
    invoke-virtual {v0, v6, v4}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    const/16 v7, 0x3021

    .line 165
    invoke-virtual {v0, v7, v4}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    const/16 v4, 0x3025

    const/4 v8, 0x0

    .line 166
    invoke-virtual {v0, v4, v8}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    const/16 v9, 0x3027

    const/16 v10, 0x3038

    .line 167
    invoke-virtual {v0, v9, v10}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    const/16 v9, 0x3026

    .line 168
    invoke-virtual {v0, v9, v8}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    const/16 v10, 0x3033

    .line 169
    invoke-virtual {v0, v10, v2}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    .line 209
    invoke-virtual {v0}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->build()Landroidx/graphics/opengl/egl/EGLConfigAttributes;

    move-result-object v0

    .line 160
    sput-object v0, Landroidx/graphics/opengl/egl/EGLConfigAttributes;->RGBA_8888:Landroidx/graphics/opengl/egl/EGLConfigAttributes;

    .line 211
    new-instance v0, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;

    invoke-direct {v0}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;-><init>()V

    .line 179
    invoke-virtual {v0, v1, v2}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    const/16 v11, 0xa

    .line 180
    invoke-virtual {v0, v3, v11}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    .line 181
    invoke-virtual {v0, v5, v11}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    .line 182
    invoke-virtual {v0, v6, v11}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    const/4 v11, 0x2

    .line 183
    invoke-virtual {v0, v7, v11}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    .line 184
    invoke-virtual {v0, v4, v8}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    .line 185
    invoke-virtual {v0, v9, v8}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    .line 186
    invoke-virtual {v0, v10, v2}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    .line 211
    invoke-virtual {v0}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->build()Landroidx/graphics/opengl/egl/EGLConfigAttributes;

    move-result-object v0

    .line 178
    sput-object v0, Landroidx/graphics/opengl/egl/EGLConfigAttributes;->RGBA_1010102:Landroidx/graphics/opengl/egl/EGLConfigAttributes;

    .line 213
    new-instance v0, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;

    invoke-direct {v0}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;-><init>()V

    .line 196
    invoke-virtual {v0, v1, v2}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    const/16 v1, 0x3339

    const/16 v11, 0x333b

    .line 197
    invoke-virtual {v0, v1, v11}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    const/16 v1, 0x10

    .line 198
    invoke-virtual {v0, v3, v1}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    .line 199
    invoke-virtual {v0, v5, v1}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    .line 200
    invoke-virtual {v0, v6, v1}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    .line 201
    invoke-virtual {v0, v7, v1}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    .line 202
    invoke-virtual {v0, v4, v8}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    .line 203
    invoke-virtual {v0, v9, v8}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    .line 204
    invoke-virtual {v0, v10, v2}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->to(II)V

    .line 213
    invoke-virtual {v0}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->build()Landroidx/graphics/opengl/egl/EGLConfigAttributes;

    move-result-object v0

    .line 195
    sput-object v0, Landroidx/graphics/opengl/egl/EGLConfigAttributes;->RGBA_F16:Landroidx/graphics/opengl/egl/EGLConfigAttributes;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    const-string v0, "attrs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/graphics/opengl/egl/EGLConfigAttributes;->attrs:[I

    return-void
.end method

.method public static synthetic getAttrs$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getAttrs()[I
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/graphics/opengl/egl/EGLConfigAttributes;->attrs:[I

    return-object v0
.end method

.method public final toArray()[I
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/graphics/opengl/egl/EGLConfigAttributes;->attrs:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
