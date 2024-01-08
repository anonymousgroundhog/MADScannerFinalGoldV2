.class public Lcom/infinite/app/ui/Slider;
.super Lcom/infinite/app/ui/UIComponent;
.source "Slider.java"


# instance fields
.field private sliderView:Landroid/widget/SeekBar;

.field private valueView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/UIComponent;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/infinite/app/ui/UIComponent;-><init>(Lcom/infinite/app/ui/UIComponent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/infinite/app/ui/Slider;II)F
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/Slider;->fromSeekProgress(II)F

    move-result p0

    return p0
.end method

.method private bindProgressChangeListener(Landroid/view/View;)V
    .locals 4

    .line 67
    iget-wide v0, p0, Lcom/infinite/app/ui/Slider;->nativePointer:J

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/infinite/app/ui/Slider;->getInteraction(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 69
    new-instance v2, Lcom/infinite/app/ui/interactions/FloatChangeInteraction;

    invoke-direct {v2, v0, v1}, Lcom/infinite/app/ui/interactions/FloatChangeInteraction;-><init>(J)V

    .line 70
    check-cast p1, Landroid/widget/SeekBar;

    .line 71
    new-instance v0, Lcom/infinite/app/ui/Slider$1;

    invoke-direct {v0, p0, v2}, Lcom/infinite/app/ui/Slider$1;-><init>(Lcom/infinite/app/ui/Slider;Lcom/infinite/app/ui/interactions/FloatChangeInteraction;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    return-void
.end method

.method private fromSeekProgress(II)F
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    return p1
.end method

.method private native getValue(JJ)F
.end method

.method private native getValueText(JJ)Ljava/lang/String;
.end method

.method private toSeekProgress(FI)I
    .locals 0

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method private updateSliderView(Landroid/widget/SeekBar;)V
    .locals 4

    .line 44
    iget-wide v0, p0, Lcom/infinite/app/ui/Slider;->nativePointer:J

    iget-wide v2, p0, Lcom/infinite/app/ui/Slider;->target:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/infinite/app/ui/Slider;->getValue(JJ)F

    move-result v0

    .line 45
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/infinite/app/ui/Slider;->toSeekProgress(FI)I

    move-result v0

    .line 46
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private updateValueView(Landroid/widget/TextView;)V
    .locals 4

    .line 52
    iget-wide v0, p0, Lcom/infinite/app/ui/Slider;->nativePointer:J

    iget-wide v2, p0, Lcom/infinite/app/ui/Slider;->target:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/infinite/app/ui/Slider;->getValueText(JJ)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;J)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/infinite/app/ui/UIComponent;->bind(Landroid/view/View;J)V

    .line 26
    invoke-direct {p0, p1}, Lcom/infinite/app/ui/Slider;->bindProgressChangeListener(Landroid/view/View;)V

    .line 27
    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/infinite/app/ui/Slider;->sliderView:Landroid/widget/SeekBar;

    return-void
.end method

.method public setValueView(Landroid/widget/TextView;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/infinite/app/ui/Slider;->valueView:Landroid/widget/TextView;

    return-void
.end method

.method public update()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/infinite/app/ui/Slider;->sliderView:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0, v0}, Lcom/infinite/app/ui/Slider;->updateSliderView(Landroid/widget/SeekBar;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/infinite/app/ui/Slider;->valueView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 39
    invoke-direct {p0, v0}, Lcom/infinite/app/ui/Slider;->updateValueView(Landroid/widget/TextView;)V

    :cond_1
    return-void
.end method
