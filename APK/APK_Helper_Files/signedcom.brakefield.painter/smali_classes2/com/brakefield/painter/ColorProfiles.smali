.class public Lcom/brakefield/painter/ColorProfiles;
.super Ljava/lang/Object;
.source "ColorProfiles.java"


# static fields
.field public static final COLOR_BLINDNESS_DEUTERANOPIA:I = 0x3d

.field public static final COLOR_BLINDNESS_PROTANOPIA:I = 0x3c

.field public static final DISPLAY_P3:I = 0x1

.field public static final EUROPE_FOGRA39_COATED:I = 0x1e

.field public static final EUROSCALE_COATED_V2:I = 0x1f

.field public static final EUROSCALE_UNCOATED_V2:I = 0x23

.field public static final GENERIC_CMYK_PROFILE:I = 0xa

.field public static final GENERIC_GRAYSCALE:I = 0x32

.field public static final JAPAN_COATED_2011:I = 0x28

.field public static final LINE_ART:I = 0x33

.field public static final NONE:I = 0x0

.field public static final US_GRACOL_COATED_2006:I = 0x17

.field public static final US_SWOP_WEB_COATED_GRADE_3:I = 0x15

.field public static final US_SWOP_WEB_COATED_GRADE_5:I = 0x16

.field public static final US_SWOP_WEB_COATED_V2:I = 0x14

.field public static final US_SWOP_WEB_UNCOATED_V2:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorProfileName(I)Ljava/lang/String;
    .locals 0

    .line 82
    invoke-static {p0}, Lcom/brakefield/painter/PainterLib;->getColorProfileName(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentColorProfile()I
    .locals 1

    .line 74
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentColorProfile()I

    move-result v0

    return v0
.end method

.method public static getCurrentColorProfileResourceName()Ljava/lang/String;
    .locals 1

    .line 90
    invoke-static {}, Lcom/brakefield/painter/ColorProfiles;->getCurrentColorProfile()I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getColorProfileResourceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;
    .locals 2

    .line 70
    new-instance v0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    invoke-static {p0}, Lcom/brakefield/painter/ColorProfiles;->getColorProfileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getSpinnerItems()[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;
    .locals 4

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    .line 42
    new-instance v1, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerSectionHeaderItem;

    const v2, 0x7f12010a

    .line 44
    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerSectionHeaderItem;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 45
    invoke-static {v2}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerSectionHeaderItem;

    const v2, 0x7f120a03

    .line 47
    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerSectionHeaderItem;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xa

    .line 48
    invoke-static {v1}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/16 v2, 0x14

    .line 49
    invoke-static {v2}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/16 v2, 0x15

    .line 50
    invoke-static {v2}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const/16 v2, 0x16

    .line 51
    invoke-static {v2}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const/16 v2, 0x19

    .line 52
    invoke-static {v2}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const/16 v2, 0x17

    .line 53
    invoke-static {v2}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const/16 v2, 0x1e

    .line 54
    invoke-static {v2}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v0, v3

    const/16 v2, 0x1f

    .line 55
    invoke-static {v2}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 56
    invoke-static {v1}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0x28

    .line 57
    invoke-static {v1}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerSectionHeaderItem;

    const v2, 0x7f1201dd

    .line 59
    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerSectionHeaderItem;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0x32

    .line 60
    invoke-static {v1}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v1, 0x33

    .line 61
    invoke-static {v1}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerSectionHeaderItem;

    const v2, 0x7f1200bd

    .line 63
    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerSectionHeaderItem;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v1, 0x3c

    .line 64
    invoke-static {v1}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v1, 0x3d

    .line 65
    invoke-static {v1}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItem(I)Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static refreshColorProfile()Z
    .locals 1

    .line 86
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->refreshColorProfile()Z

    move-result v0

    return v0
.end method

.method public static setColorProfile(I)V
    .locals 0

    .line 78
    invoke-static {p0}, Lcom/brakefield/painter/PainterLib;->setColorProfile(I)V

    return-void
.end method

.method public static setColorProfileTexture(I)V
    .locals 0

    .line 94
    invoke-static {p0}, Lcom/brakefield/painter/PainterLib;->setColorProfileTexture(I)V

    return-void
.end method
