.class public Lcom/infinite/app/ui/UIComponent;
.super Lcom/infinite/core/NativeObject;
.source "UIComponent.java"


# static fields
.field protected static final CHANGE_TEXT:I = 0x3

.field protected static final CHANGE_VALUE:I = 0x2

.field protected static final CLICK:I = 0x0

.field protected static final LONGPRESS:I = 0x1

.field protected static final SELECT_ITEM:I = 0x4


# instance fields
.field private clickInteraction:Lcom/infinite/app/ui/interactions/ClickInteraction;

.field private extraClickListener:Landroid/view/View$OnClickListener;

.field private extraLongClickListener:Landroid/view/View$OnLongClickListener;

.field private longpressInteraction:Lcom/infinite/app/ui/interactions/LongpressInteraction;

.field protected target:J

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent;->view:Landroid/view/View;

    .line 19
    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent;->clickInteraction:Lcom/infinite/app/ui/interactions/ClickInteraction;

    .line 20
    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent;->longpressInteraction:Lcom/infinite/app/ui/interactions/LongpressInteraction;

    .line 21
    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent;->extraClickListener:Landroid/view/View$OnClickListener;

    .line 22
    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent;->extraLongClickListener:Landroid/view/View$OnLongClickListener;

    const-wide/16 p1, 0x0

    .line 23
    iput-wide p1, p0, Lcom/infinite/app/ui/UIComponent;->target:J

    return-void
.end method

.method public constructor <init>(Lcom/infinite/app/ui/UIComponent;)V
    .locals 2

    .line 29
    iget-wide v0, p1, Lcom/infinite/app/ui/UIComponent;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/infinite/core/NativeObject;-><init>(J)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent;->view:Landroid/view/View;

    .line 19
    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent;->clickInteraction:Lcom/infinite/app/ui/interactions/ClickInteraction;

    .line 20
    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent;->longpressInteraction:Lcom/infinite/app/ui/interactions/LongpressInteraction;

    .line 21
    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent;->extraClickListener:Landroid/view/View$OnClickListener;

    .line 22
    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent;->extraLongClickListener:Landroid/view/View$OnLongClickListener;

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/infinite/app/ui/UIComponent;->target:J

    return-void
.end method

.method private getCenterOfView(Landroid/view/View;)Landroid/graphics/Point;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 72
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    add-int/2addr v1, p1

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public addClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent;->extraClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public addLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent;->extraLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public bind(Landroid/view/View;J)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent;->view:Landroid/view/View;

    .line 34
    iput-wide p2, p0, Lcom/infinite/app/ui/UIComponent;->target:J

    .line 35
    invoke-virtual {p0, p1}, Lcom/infinite/app/ui/UIComponent;->bindClickListener(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/infinite/app/ui/UIComponent;->bindLongpressListener(Landroid/view/View;)V

    return-void
.end method

.method protected bindClickListener(Landroid/view/View;)V
    .locals 4

    .line 42
    iget-wide v0, p0, Lcom/infinite/app/ui/UIComponent;->nativePointer:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/infinite/app/ui/UIComponent;->getInteraction(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 44
    new-instance v2, Lcom/infinite/app/ui/interactions/ClickInteraction;

    invoke-direct {v2, v0, v1}, Lcom/infinite/app/ui/interactions/ClickInteraction;-><init>(J)V

    iput-object v2, p0, Lcom/infinite/app/ui/UIComponent;->clickInteraction:Lcom/infinite/app/ui/interactions/ClickInteraction;

    .line 45
    new-instance v0, Lcom/infinite/app/ui/UIComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/infinite/app/ui/UIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/infinite/app/ui/UIComponent;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent;->clickInteraction:Lcom/infinite/app/ui/interactions/ClickInteraction;

    :goto_0
    return-void
.end method

.method protected bindLongpressListener(Landroid/view/View;)V
    .locals 4

    .line 56
    iget-wide v0, p0, Lcom/infinite/app/ui/UIComponent;->nativePointer:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/infinite/app/ui/UIComponent;->getInteraction(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 58
    new-instance v2, Lcom/infinite/app/ui/interactions/LongpressInteraction;

    invoke-direct {v2, v0, v1}, Lcom/infinite/app/ui/interactions/LongpressInteraction;-><init>(J)V

    iput-object v2, p0, Lcom/infinite/app/ui/UIComponent;->longpressInteraction:Lcom/infinite/app/ui/interactions/LongpressInteraction;

    .line 59
    new-instance v0, Lcom/infinite/app/ui/UIComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/infinite/app/ui/UIComponent$$ExternalSyntheticLambda1;-><init>(Lcom/infinite/app/ui/UIComponent;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent;->longpressInteraction:Lcom/infinite/app/ui/interactions/LongpressInteraction;

    :goto_0
    return-void
.end method

.method public getClickInteraction()J
    .locals 3

    .line 78
    iget-wide v0, p0, Lcom/infinite/app/ui/UIComponent;->nativePointer:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/infinite/app/ui/UIComponent;->getInteraction(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected native getInteraction(JI)J
.end method

.method public getLongpressInteraction()J
    .locals 3

    .line 82
    iget-wide v0, p0, Lcom/infinite/app/ui/UIComponent;->nativePointer:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/infinite/app/ui/UIComponent;->getInteraction(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/infinite/app/ui/UIComponent;->view:Landroid/view/View;

    return-object v0
.end method

.method synthetic lambda$bindClickListener$0$com-infinite-app-ui-UIComponent(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 46
    invoke-direct {p0, p1}, Lcom/infinite/app/ui/UIComponent;->getCenterOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/infinite/app/ui/UIComponent;->clickInteraction:Lcom/infinite/app/ui/interactions/ClickInteraction;

    iget-wide v1, p0, Lcom/infinite/app/ui/UIComponent;->target:J

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/infinite/app/ui/interactions/ClickInteraction;->onClick(JII)V

    .line 48
    iget-object p1, p0, Lcom/infinite/app/ui/UIComponent;->extraClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$bindLongpressListener$1$com-infinite-app-ui-UIComponent(Landroid/view/View;)Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/infinite/app/ui/UIComponent;->longpressInteraction:Lcom/infinite/app/ui/interactions/LongpressInteraction;

    iget-wide v1, p0, Lcom/infinite/app/ui/UIComponent;->target:J

    invoke-virtual {v0, v1, v2}, Lcom/infinite/app/ui/interactions/LongpressInteraction;->onLongpress(J)Z

    .line 61
    iget-object v0, p0, Lcom/infinite/app/ui/UIComponent;->extraLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setTarget(J)V
    .locals 0

    .line 90
    iput-wide p1, p0, Lcom/infinite/app/ui/UIComponent;->target:J

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method
