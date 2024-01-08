.class public Lcom/brakefield/painter/app/PainterApp$UI;
.super Ljava/lang/Object;
.source "PainterApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/app/PainterApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UI"
.end annotation


# instance fields
.field private final components:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/infinite/app/ui/UIComponent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/brakefield/painter/app/PainterApp;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/app/PainterApp;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/brakefield/painter/app/PainterApp$UI;->this$0:Lcom/brakefield/painter/app/PainterApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/app/PainterApp$UI;->components:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/app/PainterApp$UI;Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;)Lcom/infinite/app/ui/UIComponent;
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/app/PainterApp$UI;->getComponentForView(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;)Lcom/infinite/app/ui/UIComponent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/app/PainterApp$UI;Lcom/infinite/app/ui/UIComponent;)Lcom/infinite/app/ui/UIComponent;
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/brakefield/painter/app/PainterApp$UI;->findStoredComponent(Lcom/infinite/app/ui/UIComponent;)Lcom/infinite/app/ui/UIComponent;

    move-result-object p0

    return-object p0
.end method

.method private bindDropdown(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;JLcom/infinite/app/OnBindListener;)V
    .locals 13

    move-object v0, p2

    move-object/from16 v1, p5

    .line 304
    instance-of v2, v0, Landroid/widget/Spinner;

    if-eqz v2, :cond_0

    .line 305
    move-object v2, v0

    check-cast v2, Landroid/widget/Spinner;

    goto :goto_0

    .line 306
    :cond_0
    instance-of v2, v0, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    if-eqz v2, :cond_1

    .line 307
    move-object v2, v0

    check-cast v2, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    .line 308
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->getDropdown()Landroid/widget/Spinner;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 311
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/app/PainterApp$UI;->getComponentForView(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;)Lcom/infinite/app/ui/UIComponent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 314
    new-instance v12, Lcom/infinite/app/ui/Dropdown;

    invoke-direct {v12, v0}, Lcom/infinite/app/ui/Dropdown;-><init>(Lcom/infinite/app/ui/UIComponent;)V

    .line 315
    invoke-virtual {p1}, Lcom/brakefield/painter/app/PainterApp;->getAppStrings()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/brakefield/painter/app/PainterApp;->getAppIcons()J

    move-result-wide v9

    new-instance v11, Lcom/brakefield/painter/app/PainterApp$UI$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Lcom/brakefield/painter/app/PainterApp$UI$$ExternalSyntheticLambda0;-><init>()V

    move-object v3, v12

    move-object v4, v2

    move-wide/from16 v5, p3

    invoke-virtual/range {v3 .. v11}, Lcom/infinite/app/ui/Dropdown;->bind(Landroid/view/View;JJJLcom/infinite/app/ui/Dropdown$Delegate;)V

    if-eqz v1, :cond_2

    .line 319
    invoke-interface {v1, v2, v0}, Lcom/infinite/app/OnBindListener;->onBind(Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V

    .line 321
    :cond_2
    invoke-virtual {v12}, Lcom/infinite/app/ui/Dropdown;->update()V

    move-object v0, p0

    .line 323
    invoke-direct {p0, v12}, Lcom/brakefield/painter/app/PainterApp$UI;->storeComponent(Lcom/infinite/app/ui/UIComponent;)V

    goto :goto_1

    :cond_3
    move-object v0, p0

    :goto_1
    return-void
.end method

.method private bindSlider(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;JLcom/infinite/app/OnBindListener;)V
    .locals 4

    .line 228
    instance-of v0, p2, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 229
    move-object v0, p2

    check-cast v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    move-object v2, v1

    goto :goto_0

    .line 230
    :cond_0
    instance-of v0, p2, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v0, :cond_1

    .line 231
    move-object v0, p2

    check-cast v0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 232
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->getSlider()Lcom/brakefield/infinitestudio/ui/CustomSlider;

    move-result-object v2

    .line 233
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->getValueLabel()Landroid/widget/TextView;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v0, v1

    move-object v2, v0

    .line 236
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/app/PainterApp$UI;->getComponentForView(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;)Lcom/infinite/app/ui/UIComponent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 239
    new-instance p2, Lcom/infinite/app/ui/Slider;

    invoke-direct {p2, p1}, Lcom/infinite/app/ui/Slider;-><init>(Lcom/infinite/app/ui/UIComponent;)V

    .line 240
    invoke-virtual {p2, v0, p3, p4}, Lcom/infinite/app/ui/Slider;->bind(Landroid/view/View;J)V

    .line 241
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getOnSeekBarChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p4

    invoke-static {p3, v0, v1, p4}, Lcom/brakefield/infinitestudio/ui/UIManager;->getSliderPopupListener(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p3

    .line 242
    invoke-virtual {v0, p3}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    if-eqz p5, :cond_2

    .line 244
    invoke-interface {p5, v0, p1}, Lcom/infinite/app/OnBindListener;->onBind(Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V

    .line 246
    :cond_2
    invoke-virtual {p2, v2}, Lcom/infinite/app/ui/Slider;->setValueView(Landroid/widget/TextView;)V

    .line 247
    invoke-virtual {p2}, Lcom/infinite/app/ui/Slider;->update()V

    .line 249
    invoke-direct {p0, p2}, Lcom/brakefield/painter/app/PainterApp$UI;->storeComponent(Lcom/infinite/app/ui/UIComponent;)V

    :cond_3
    return-void
.end method

.method private bindTextField(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;JLcom/infinite/app/OnBindListener;)V
    .locals 1

    .line 282
    instance-of v0, p2, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 283
    move-object v0, p2

    check-cast v0, Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 286
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/app/PainterApp$UI;->getComponentForView(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;)Lcom/infinite/app/ui/UIComponent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 289
    new-instance p2, Lcom/infinite/app/ui/TextField;

    invoke-direct {p2, p1}, Lcom/infinite/app/ui/TextField;-><init>(Lcom/infinite/app/ui/UIComponent;)V

    .line 290
    invoke-virtual {p2, v0, p3, p4}, Lcom/infinite/app/ui/TextField;->bind(Landroid/view/View;J)V

    if-eqz p5, :cond_1

    .line 292
    invoke-interface {p5, v0, p1}, Lcom/infinite/app/OnBindListener;->onBind(Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V

    .line 294
    :cond_1
    invoke-virtual {p2}, Lcom/infinite/app/ui/TextField;->update()V

    .line 296
    invoke-direct {p0, p2}, Lcom/brakefield/painter/app/PainterApp$UI;->storeComponent(Lcom/infinite/app/ui/UIComponent;)V

    :cond_2
    return-void
.end method

.method private bindToggle(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;JLcom/infinite/app/OnBindListener;)V
    .locals 1

    .line 257
    instance-of v0, p2, Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 258
    move-object v0, p2

    check-cast v0, Landroid/widget/Switch;

    goto :goto_0

    .line 259
    :cond_0
    instance-of v0, p2, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v0, :cond_1

    .line 260
    move-object v0, p2

    check-cast v0, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 261
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->getToggle()Landroid/widget/Switch;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 264
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/app/PainterApp$UI;->getComponentForView(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;)Lcom/infinite/app/ui/UIComponent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 267
    new-instance p2, Lcom/infinite/app/ui/Toggle;

    invoke-direct {p2, p1}, Lcom/infinite/app/ui/Toggle;-><init>(Lcom/infinite/app/ui/UIComponent;)V

    .line 268
    invoke-virtual {p2, v0, p3, p4}, Lcom/infinite/app/ui/Toggle;->bind(Landroid/view/View;J)V

    if-eqz p5, :cond_2

    .line 270
    invoke-interface {p5, v0, p1}, Lcom/infinite/app/OnBindListener;->onBind(Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V

    .line 272
    :cond_2
    invoke-virtual {p2}, Lcom/infinite/app/ui/Toggle;->update()V

    .line 274
    invoke-direct {p0, p2}, Lcom/brakefield/painter/app/PainterApp$UI;->storeComponent(Lcom/infinite/app/ui/UIComponent;)V

    :cond_3
    return-void
.end method

.method private bindView(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;JLcom/infinite/app/OnBindListener;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/app/PainterApp$UI;->getComponentForView(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;)Lcom/infinite/app/ui/UIComponent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p1, p2, p3, p4}, Lcom/infinite/app/ui/UIComponent;->bind(Landroid/view/View;J)V

    if-eqz p5, :cond_0

    .line 215
    invoke-interface {p5, p2, p1}, Lcom/infinite/app/OnBindListener;->onBind(Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V

    .line 217
    :cond_0
    invoke-virtual {p1}, Lcom/infinite/app/ui/UIComponent;->update()V

    .line 219
    invoke-direct {p0, p1}, Lcom/brakefield/painter/app/PainterApp$UI;->storeComponent(Lcom/infinite/app/ui/UIComponent;)V

    :cond_1
    return-void
.end method

.method private findStoredComponent(Lcom/infinite/app/ui/UIComponent;)Lcom/infinite/app/ui/UIComponent;
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/brakefield/painter/app/PainterApp$UI;->components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 336
    iget-object p1, p0, Lcom/brakefield/painter/app/PainterApp$UI;->components:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/infinite/app/ui/UIComponent;

    :cond_0
    return-object p1
.end method

.method private getComponentForView(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;)Lcom/infinite/app/ui/UIComponent;
    .locals 1

    const v0, 0x7f0a0663

    .line 343
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 345
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/app/PainterApp;->findComponent(Ljava/lang/String;)Lcom/infinite/app/ui/UIComponent;

    move-result-object p1

    .line 346
    invoke-direct {p0, p1}, Lcom/brakefield/painter/app/PainterApp$UI;->findStoredComponent(Lcom/infinite/app/ui/UIComponent;)Lcom/infinite/app/ui/UIComponent;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$bindDropdown$0()Z
    .locals 1

    .line 316
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMasterWithoutTrial()Z

    move-result v0

    return v0
.end method

.method private storeComponent(Lcom/infinite/app/ui/UIComponent;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/brakefield/painter/app/PainterApp$UI;->components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lcom/brakefield/painter/app/PainterApp$UI;->components:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public bind(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;JLcom/infinite/app/OnBindListener;)V
    .locals 2

    .line 183
    instance-of v0, p2, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    if-nez v0, :cond_6

    instance-of v0, p2, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v0, :cond_0

    goto :goto_3

    .line 185
    :cond_0
    instance-of v0, p2, Landroid/widget/Switch;

    if-nez v0, :cond_5

    instance-of v0, p2, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v0, :cond_1

    goto :goto_2

    .line 187
    :cond_1
    instance-of v0, p2, Landroid/widget/Spinner;

    if-nez v0, :cond_4

    instance-of v0, p2, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 189
    :cond_2
    instance-of v0, p2, Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 190
    invoke-direct/range {p0 .. p5}, Lcom/brakefield/painter/app/PainterApp$UI;->bindTextField(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    goto :goto_4

    .line 192
    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/brakefield/painter/app/PainterApp$UI;->bindView(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    .line 194
    instance-of p1, p2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_7

    .line 195
    check-cast p2, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 196
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_7

    .line 197
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/brakefield/painter/app/PainterApp$UI;->this$0:Lcom/brakefield/painter/app/PainterApp;

    invoke-virtual {v1, v0, p3, p4, p5}, Lcom/brakefield/painter/app/PainterApp;->bindUI(Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 188
    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p5}, Lcom/brakefield/painter/app/PainterApp$UI;->bindDropdown(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    goto :goto_4

    .line 186
    :cond_5
    :goto_2
    invoke-direct/range {p0 .. p5}, Lcom/brakefield/painter/app/PainterApp$UI;->bindToggle(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    goto :goto_4

    .line 184
    :cond_6
    :goto_3
    invoke-direct/range {p0 .. p5}, Lcom/brakefield/painter/app/PainterApp$UI;->bindSlider(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;JLcom/infinite/app/OnBindListener;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public canBindInteractions(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;)Z
    .locals 0

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/app/PainterApp$UI;->getComponentForView(Lcom/brakefield/painter/app/PainterApp;Landroid/view/View;)Lcom/infinite/app/ui/UIComponent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clear()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/brakefield/painter/app/PainterApp$UI;->components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public updateComponent(J)V
    .locals 1

    .line 328
    new-instance v0, Lcom/infinite/app/ui/UIComponent;

    invoke-direct {v0, p1, p2}, Lcom/infinite/app/ui/UIComponent;-><init>(J)V

    .line 329
    invoke-direct {p0, v0}, Lcom/brakefield/painter/app/PainterApp$UI;->findStoredComponent(Lcom/infinite/app/ui/UIComponent;)Lcom/infinite/app/ui/UIComponent;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Lcom/infinite/app/ui/UIComponent;->update()V

    return-void
.end method
