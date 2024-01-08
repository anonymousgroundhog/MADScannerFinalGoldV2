.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

.field public final synthetic f$1:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->lambda$renamePreset$2$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PresetsSection(Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;Ljava/lang/String;)V

    return-void
.end method
