.class public final synthetic Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/databinding/MainToolbarBinding;

.field public final synthetic f$1:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda14;->f$0:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda14;->f$1:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda14;->f$0:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda14;->f$1:Landroid/content/res/Resources;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->lambda$new$15(Lcom/brakefield/painter/databinding/MainToolbarBinding;Landroid/content/res/Resources;Ljava/lang/Boolean;)V

    return-void
.end method
