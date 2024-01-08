.class public Lcom/brakefield/painter/fragments/BrushHeadSettingsFragment;
.super Lcom/brakefield/painter/fragments/BrushSettingsFragment;
.source "BrushHeadSettingsFragment.java"


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/brakefield/painter/fragments/BrushSettingsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method


# virtual methods
.method public getBrushSettings()Lcom/brakefield/painter/brushes/settings/BrushSettings;
    .locals 1

    .line 20
    new-instance v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;

    invoke-direct {v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings;-><init>()V

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    const v0, 0x7f0800c7

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1201ed

    .line 16
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
