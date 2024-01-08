.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;Landroid/content/Context;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda2;->f$2:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;

    return-void
.end method


# virtual methods
.method public final onSelected()V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda2;->f$2:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->lambda$showPresetOptions$1$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PresetsSection(Landroid/content/Context;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V

    return-void
.end method
