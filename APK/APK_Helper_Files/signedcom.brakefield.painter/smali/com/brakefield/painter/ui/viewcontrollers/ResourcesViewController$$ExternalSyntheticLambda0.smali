.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final onSelected()V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->lambda$getView$0(Landroid/app/Activity;Ljava/lang/Class;)V

    return-void
.end method
