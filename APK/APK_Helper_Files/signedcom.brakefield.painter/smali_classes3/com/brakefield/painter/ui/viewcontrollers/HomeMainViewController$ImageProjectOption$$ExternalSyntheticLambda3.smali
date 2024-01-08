.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$1:Lcom/brakefield/painter/PainterProjectStore$Project;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/painter/PainterProjectStore$Project;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/painter/PainterProjectStore$Project;

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption;->lambda$onClick$1(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    return-void
.end method
