.class public Lcom/brakefield/infinitestudio/image/eps/EPSUtils;
.super Ljava/lang/Object;
.source "EPSUtils.java"


# static fields
.field private static final BOUNDING_BOX_COMMENT:Ljava/lang/String; = "%%BoundingBox: "

.field public static final CLOSE_PATH:Ljava/lang/String; = "closepath"

.field private static final CREATION_DATE_COMMENT:Ljava/lang/String; = "%%CreationDate: "

.field private static final CREATOR_COMMENT:Ljava/lang/String; = "%%Creator: "

.field public static final CURVE_TO:Ljava/lang/String; = "curveto"

.field private static final EPS_HEADER:Ljava/lang/String; = "%!PS-Adobe-3.0 EPSF-3.0"

.field public static final FILL:Ljava/lang/String; = "fill"

.field public static final LINE_TO:Ljava/lang/String; = "lineto"

.field public static final MOVE_TO:Ljava/lang/String; = "moveto"

.field public static final NEW_PATH:Ljava/lang/String; = "newpath"

.field private static final PAGES_COMMENT:Ljava/lang/String; = "%%Pages: "

.field private static final PAGE_COMMENT:Ljava/lang/String; = "%%Page: "

.field public static final RESTORE_GRAPHICS_STATE:Ljava/lang/String; = "restore"

.field public static final R_CURVE_TO:Ljava/lang/String; = "rcurveto"

.field public static final R_LINE_TO:Ljava/lang/String; = "rlineto"

.field public static final R_MOVE_TO:Ljava/lang/String; = "rmoveto"

.field public static final SAVE_GRAPHICS_STATE:Ljava/lang/String; = "save"

.field public static final SCALE:Ljava/lang/String; = "scale"

.field public static final SET_COLOR:Ljava/lang/String; = "setrgbcolor"

.field public static final SET_LINE_CAP:Ljava/lang/String; = "setlinecap"

.field public static final SET_LINE_JOIN:Ljava/lang/String; = "setlinejoin"

.field public static final SET_LINE_WIDTH:Ljava/lang/String; = "setlinewidth"

.field public static final SHOW_PAGE:Ljava/lang/String; = "showpage"

.field public static final STROKE:Ljava/lang/String; = "stroke"

.field private static final TITLE_COMMENT:Ljava/lang/String; = "%%Title: "

.field public static final TRANSLATE:Ljava/lang/String; = "translate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flip(F)F
    .locals 2

    .line 1120
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p0, v1

    sub-float/2addr v0, p0

    return v0
.end method
