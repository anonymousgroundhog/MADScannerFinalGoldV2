.class public Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;
.super Lcom/infinite/app/ui/views/BaseDropdown;
.source "ImmersiveSpinner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/infinite/app/ui/views/BaseDropdown;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/views/BaseDropdown;-><init>(Landroid/content/Context;I)V

    .line 28
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/views/BaseDropdown;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/infinite/app/ui/views/BaseDropdown;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/infinite/app/ui/views/BaseDropdown;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setup()V

    return-void
.end method

.method private setup()V
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->avoidSpinnerDropdownFocus()V

    .line 45
    sget v0, Lcom/brakefield/infinitestudio/R$drawable;->spinner:I

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setBackgroundResource(I)V

    .line 46
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 47
    sget v1, Lcom/brakefield/infinitestudio/R$id;->spinner_background:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getLighterColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 49
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 50
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setElevation(F)V

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public avoidSpinnerDropdownFocus()V
    .locals 4

    const-string v0, "mPopup"

    .line 56
    :try_start_0
    const-class v1, Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    instance-of v3, v1, Landroid/widget/ListPopupWindow;

    if-eqz v3, :cond_0

    .line 60
    const-class v3, Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 62
    check-cast v1, Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    instance-of v1, v0, Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 64
    check-cast v0, Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 68
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method
