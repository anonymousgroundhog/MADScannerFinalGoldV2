.class public final synthetic Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda19;->f$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    return-void
.end method


# virtual methods
.method public final getDisplayValue(F)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda19;->f$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->lambda$setupToolbar$13$com-brakefield-painter-ui-toolbars-MainToolbar(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
