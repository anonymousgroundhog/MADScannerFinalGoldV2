.class public Lcom/infinite/app/ui/TextField;
.super Lcom/infinite/app/ui/UIComponent;
.source "TextField.java"


# instance fields
.field textField:Lcom/infinite/app/ui/views/BaseTextField;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/UIComponent;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/infinite/app/ui/UIComponent;-><init>(Lcom/infinite/app/ui/UIComponent;)V

    return-void
.end method

.method private bindTextChangeListener(Landroid/view/View;)V
    .locals 4

    .line 28
    iget-wide v0, p0, Lcom/infinite/app/ui/TextField;->nativePointer:J

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/infinite/app/ui/TextField;->getInteraction(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 30
    new-instance v2, Lcom/infinite/app/ui/interactions/TextChangeInteraction;

    invoke-direct {v2, v0, v1}, Lcom/infinite/app/ui/interactions/TextChangeInteraction;-><init>(J)V

    .line 31
    check-cast p1, Lcom/infinite/app/ui/views/BaseTextField;

    .line 32
    new-instance v0, Lcom/infinite/app/ui/TextField$1;

    invoke-direct {v0, p0, v2}, Lcom/infinite/app/ui/TextField$1;-><init>(Lcom/infinite/app/ui/TextField;Lcom/infinite/app/ui/interactions/TextChangeInteraction;)V

    invoke-virtual {p1, v0}, Lcom/infinite/app/ui/views/BaseTextField;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private native getText(JJ)Ljava/lang/String;
.end method


# virtual methods
.method public bind(Landroid/view/View;J)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/infinite/app/ui/UIComponent;->bind(Landroid/view/View;J)V

    .line 23
    invoke-direct {p0, p1}, Lcom/infinite/app/ui/TextField;->bindTextChangeListener(Landroid/view/View;)V

    .line 24
    check-cast p1, Lcom/infinite/app/ui/views/BaseTextField;

    iput-object p1, p0, Lcom/infinite/app/ui/TextField;->textField:Lcom/infinite/app/ui/views/BaseTextField;

    return-void
.end method

.method public update()V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/infinite/app/ui/TextField;->textField:Lcom/infinite/app/ui/views/BaseTextField;

    if-eqz v0, :cond_0

    .line 47
    iget-wide v0, p0, Lcom/infinite/app/ui/TextField;->nativePointer:J

    iget-wide v2, p0, Lcom/infinite/app/ui/TextField;->target:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/infinite/app/ui/TextField;->getText(JJ)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/infinite/app/ui/TextField;->textField:Lcom/infinite/app/ui/views/BaseTextField;

    invoke-virtual {v1}, Lcom/infinite/app/ui/views/BaseTextField;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/infinite/app/ui/TextField;->textField:Lcom/infinite/app/ui/views/BaseTextField;

    invoke-virtual {v1, v0}, Lcom/infinite/app/ui/views/BaseTextField;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
