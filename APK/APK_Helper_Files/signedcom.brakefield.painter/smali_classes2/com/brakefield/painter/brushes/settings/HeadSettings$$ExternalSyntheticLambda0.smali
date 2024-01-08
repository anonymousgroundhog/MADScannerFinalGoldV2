.class public final synthetic Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/brushes/settings/HeadSettings;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/brushes/settings/HeadSettings;

    iput-object p2, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final resourceSelected(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/brushes/settings/HeadSettings;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/brushes/settings/HeadSettings;->lambda$bindSettings$1$com-brakefield-painter-brushes-settings-HeadSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V

    return-void
.end method
