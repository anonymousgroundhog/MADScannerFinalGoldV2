.class public final synthetic Lcom/infinite/app/ui/UIComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/infinite/app/ui/UIComponent;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/infinite/app/ui/UIComponent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent$$ExternalSyntheticLambda0;->f$0:Lcom/infinite/app/ui/UIComponent;

    iput-object p2, p0, Lcom/infinite/app/ui/UIComponent$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/infinite/app/ui/UIComponent$$ExternalSyntheticLambda0;->f$0:Lcom/infinite/app/ui/UIComponent;

    iget-object v1, p0, Lcom/infinite/app/ui/UIComponent$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/infinite/app/ui/UIComponent;->lambda$bindClickListener$0$com-infinite-app-ui-UIComponent(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
