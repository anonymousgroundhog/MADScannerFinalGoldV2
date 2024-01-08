.class public final Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;
.super Ljava/lang/Object;
.source "ColorPickersBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final colorPicker1:Landroid/widget/FrameLayout;

.field public final colorPicker2:Landroid/widget/FrameLayout;

.field public final colorPicker3:Landroid/widget/FrameLayout;

.field public final colorPicker4:Landroid/widget/FrameLayout;

.field public final colorPicker5:Landroid/widget/FrameLayout;

.field public final colorPicker6:Landroid/widget/FrameLayout;

.field public final colorPickerImage1:Landroid/widget/ImageView;

.field public final colorPickerImage2:Landroid/widget/ImageView;

.field public final colorPickerImage3:Landroid/widget/ImageView;

.field public final colorPickerImage4:Landroid/widget/ImageView;

.field public final colorPickerImage5:Landroid/widget/ImageView;

.field public final colorPickerImage6:Landroid/widget/ImageView;

.field public final container:Landroid/widget/FrameLayout;

.field public final grid:Landroid/widget/GridLayout;

.field public final panel:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/GridLayout;Landroid/widget/FrameLayout;)V
    .locals 2

    move-object v0, p0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 76
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->rootView:Landroid/widget/FrameLayout;

    move-object v1, p2

    .line 77
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPicker1:Landroid/widget/FrameLayout;

    move-object v1, p3

    .line 78
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPicker2:Landroid/widget/FrameLayout;

    move-object v1, p4

    .line 79
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPicker3:Landroid/widget/FrameLayout;

    move-object v1, p5

    .line 80
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPicker4:Landroid/widget/FrameLayout;

    move-object v1, p6

    .line 81
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPicker5:Landroid/widget/FrameLayout;

    move-object v1, p7

    .line 82
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPicker6:Landroid/widget/FrameLayout;

    move-object v1, p8

    .line 83
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage1:Landroid/widget/ImageView;

    move-object v1, p9

    .line 84
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage2:Landroid/widget/ImageView;

    move-object v1, p10

    .line 85
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage3:Landroid/widget/ImageView;

    move-object v1, p11

    .line 86
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage4:Landroid/widget/ImageView;

    move-object v1, p12

    .line 87
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage5:Landroid/widget/ImageView;

    move-object v1, p13

    .line 88
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage6:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 89
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->container:Landroid/widget/FrameLayout;

    move-object/from16 v1, p15

    .line 90
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->grid:Landroid/widget/GridLayout;

    move-object/from16 v1, p16

    .line 91
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->panel:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;
    .locals 20

    move-object/from16 v0, p0

    .line 121
    sget v1, Lcom/brakefield/infinitestudio/R$id;->color_picker_1:I

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 127
    sget v1, Lcom/brakefield/infinitestudio/R$id;->color_picker_2:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 133
    sget v1, Lcom/brakefield/infinitestudio/R$id;->color_picker_3:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    .line 139
    sget v1, Lcom/brakefield/infinitestudio/R$id;->color_picker_4:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    .line 145
    sget v1, Lcom/brakefield/infinitestudio/R$id;->color_picker_5:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    .line 151
    sget v1, Lcom/brakefield/infinitestudio/R$id;->color_picker_6:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    .line 157
    sget v1, Lcom/brakefield/infinitestudio/R$id;->color_picker_image_1:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 163
    sget v1, Lcom/brakefield/infinitestudio/R$id;->color_picker_image_2:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    .line 169
    sget v1, Lcom/brakefield/infinitestudio/R$id;->color_picker_image_3:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 175
    sget v1, Lcom/brakefield/infinitestudio/R$id;->color_picker_image_4:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    .line 181
    sget v1, Lcom/brakefield/infinitestudio/R$id;->color_picker_image_5:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    .line 187
    sget v1, Lcom/brakefield/infinitestudio/R$id;->color_picker_image_6:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    .line 193
    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/FrameLayout;

    .line 195
    sget v1, Lcom/brakefield/infinitestudio/R$id;->grid:I

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/GridLayout;

    if-eqz v18, :cond_0

    .line 201
    sget v1, Lcom/brakefield/infinitestudio/R$id;->panel:I

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/FrameLayout;

    if-eqz v19, :cond_0

    .line 207
    new-instance v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    move-object v3, v0

    move-object/from16 v4, v17

    invoke-direct/range {v3 .. v19}, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/GridLayout;Landroid/widget/FrameLayout;)V

    return-object v0

    .line 212
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;
    .locals 2

    .line 108
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->color_pickers:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
