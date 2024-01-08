.class public Lcom/brakefield/painter/brushes/brushfolders/BrushFolderManager;
.super Ljava/lang/Object;
.source "BrushFolderManager.java"


# static fields
.field public static final CALLIGRAPHY:I = 0x14

.field public static final CHALK:I = 0x15

.field public static final CHARCOAL:I = 0x16

.field public static final CREATED:I = 0x64

.field public static final CREATE_NEW:I = 0xc8

.field public static final CUSTOM:I = 0x0

.field public static final DESIGN:I = 0x17

.field public static final DOWNLOADED:I = 0x65

.field public static final FAVORITES:I = 0x66

.field public static final FILLS:I = 0x18

.field public static final GLOW:I = 0x19

.field public static final HARMONY:I = 0xf

.field public static final INK:I = 0xb

.field public static final LEGACY_2014:I = 0x1

.field public static final MARKERS:I = 0x1a

.field public static final MISC:I = 0x1b

.field public static final PAINT:I = 0xc

.field public static final PAINTBRUSHES:I = 0x1c

.field public static final PENCILS:I = 0x1d

.field public static final PENS:I = 0x1e

.field public static final SCREENTONE:I = 0x1f

.field public static final SKETCH:I = 0xa

.field public static final SPRAY:I = 0xd

.field public static final SPRAYERS:I = 0x20

.field public static final TEXTURES:I = 0x21

.field public static final WATERCOLOR:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFolder(Ljava/lang/String;I)Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xe

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 72
    new-instance p1, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;

    invoke-direct {p1}, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;-><init>()V

    .line 73
    iput-object p0, p1, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;->name:Ljava/lang/String;

    .line 74
    iput-object p0, p1, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;->displayName:Ljava/lang/String;

    return-object p1

    .line 69
    :pswitch_0
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;-><init>()V

    return-object p0

    .line 68
    :pswitch_1
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/DownloadFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/DownloadFolder;-><init>()V

    return-object p0

    .line 67
    :pswitch_2
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/UserCreatedFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/UserCreatedFolder;-><init>()V

    return-object p0

    .line 66
    :pswitch_3
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/TexturesFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/TexturesFolder;-><init>()V

    return-object p0

    .line 65
    :pswitch_4
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/SprayersFolder;-><init>()V

    return-object p0

    .line 64
    :pswitch_5
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/ScreentoneFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/ScreentoneFolder;-><init>()V

    return-object p0

    .line 63
    :pswitch_6
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/PensFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/PensFolder;-><init>()V

    return-object p0

    .line 62
    :pswitch_7
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/PencilsFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/PencilsFolder;-><init>()V

    return-object p0

    .line 61
    :pswitch_8
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/PaintbrushesFolder;-><init>()V

    return-object p0

    .line 60
    :pswitch_9
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/MiscellaneousFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/MiscellaneousFolder;-><init>()V

    return-object p0

    .line 59
    :pswitch_a
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/MarkerFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/MarkerFolder;-><init>()V

    return-object p0

    .line 58
    :pswitch_b
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/GlowFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/GlowFolder;-><init>()V

    return-object p0

    .line 57
    :pswitch_c
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/FillsFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/FillsFolder;-><init>()V

    return-object p0

    .line 56
    :pswitch_d
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/DesignFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/DesignFolder;-><init>()V

    return-object p0

    .line 55
    :pswitch_e
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/CharcoalFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/CharcoalFolder;-><init>()V

    return-object p0

    .line 54
    :pswitch_f
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/ChalkFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/ChalkFolder;-><init>()V

    return-object p0

    .line 53
    :pswitch_10
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/CalligraphyFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/CalligraphyFolder;-><init>()V

    return-object p0

    .line 70
    :cond_0
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/CreateNewFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/CreateNewFolder;-><init>()V

    return-object p0

    .line 52
    :cond_1
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/HarmonyFolder;-><init>()V

    return-object p0

    .line 51
    :cond_2
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/WatercolorFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/WatercolorFolder;-><init>()V

    return-object p0

    .line 50
    :cond_3
    new-instance p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;

    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;-><init>()V

    return-object p0

    .line 46
    :cond_4
    new-instance p1, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;

    invoke-direct {p1}, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;-><init>()V

    .line 47
    iput-object p0, p1, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;->name:Ljava/lang/String;

    .line 48
    iput-object p0, p1, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;->displayName:Ljava/lang/String;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
