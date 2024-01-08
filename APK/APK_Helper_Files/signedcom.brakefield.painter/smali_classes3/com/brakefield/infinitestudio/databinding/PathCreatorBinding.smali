.class public final Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;
.super Ljava/lang/Object;
.source "PathCreatorBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final asterSlider:Landroid/widget/SeekBar;

.field public final asterValue:Landroid/widget/TextView;

.field public final innerSmoothSlider:Landroid/widget/SeekBar;

.field public final innerSmoothValue:Landroid/widget/TextView;

.field public final outerSmoothSlider:Landroid/widget/SeekBar;

.field public final outerSmoothValue:Landroid/widget/TextView;

.field public final pathImageview:Landroid/widget/ImageView;

.field public final pointsSlider:Landroid/widget/SeekBar;

.field public final pointsValue:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final rotateSlider:Landroid/widget/SeekBar;

.field public final rotateValue:Landroid/widget/TextView;

.field public final skewXSlider:Landroid/widget/SeekBar;

.field public final skewXValue:Landroid/widget/TextView;

.field public final skewYSlider:Landroid/widget/SeekBar;

.field public final skewYValue:Landroid/widget/TextView;

.field public final spinSlider:Landroid/widget/SeekBar;

.field public final spinValue:Landroid/widget/TextView;

.field public final squashSlider:Landroid/widget/SeekBar;

.field public final squashValue:Landroid/widget/TextView;

.field public final stretchSlider:Landroid/widget/SeekBar;

.field public final stretchValue:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 96
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    .line 97
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->asterSlider:Landroid/widget/SeekBar;

    move-object v1, p3

    .line 98
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->asterValue:Landroid/widget/TextView;

    move-object v1, p4

    .line 99
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->innerSmoothSlider:Landroid/widget/SeekBar;

    move-object v1, p5

    .line 100
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->innerSmoothValue:Landroid/widget/TextView;

    move-object v1, p6

    .line 101
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->outerSmoothSlider:Landroid/widget/SeekBar;

    move-object v1, p7

    .line 102
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->outerSmoothValue:Landroid/widget/TextView;

    move-object v1, p8

    .line 103
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->pathImageview:Landroid/widget/ImageView;

    move-object v1, p9

    .line 104
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->pointsSlider:Landroid/widget/SeekBar;

    move-object v1, p10

    .line 105
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->pointsValue:Landroid/widget/TextView;

    move-object v1, p11

    .line 106
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->rotateSlider:Landroid/widget/SeekBar;

    move-object v1, p12

    .line 107
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->rotateValue:Landroid/widget/TextView;

    move-object v1, p13

    .line 108
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->skewXSlider:Landroid/widget/SeekBar;

    move-object/from16 v1, p14

    .line 109
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->skewXValue:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 110
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->skewYSlider:Landroid/widget/SeekBar;

    move-object/from16 v1, p16

    .line 111
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->skewYValue:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 112
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->spinSlider:Landroid/widget/SeekBar;

    move-object/from16 v1, p18

    .line 113
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->spinValue:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 114
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->squashSlider:Landroid/widget/SeekBar;

    move-object/from16 v1, p20

    .line 115
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->squashValue:Landroid/widget/TextView;

    move-object/from16 v1, p21

    .line 116
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->stretchSlider:Landroid/widget/SeekBar;

    move-object/from16 v1, p22

    .line 117
    iput-object v1, v0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->stretchValue:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;
    .locals 26

    move-object/from16 v0, p0

    .line 147
    sget v1, Lcom/brakefield/infinitestudio/R$id;->aster_slider:I

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/SeekBar;

    if-eqz v5, :cond_0

    .line 153
    sget v1, Lcom/brakefield/infinitestudio/R$id;->aster_value:I

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 159
    sget v1, Lcom/brakefield/infinitestudio/R$id;->inner_smooth_slider:I

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/SeekBar;

    if-eqz v7, :cond_0

    .line 165
    sget v1, Lcom/brakefield/infinitestudio/R$id;->inner_smooth_value:I

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 171
    sget v1, Lcom/brakefield/infinitestudio/R$id;->outer_smooth_slider:I

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/SeekBar;

    if-eqz v9, :cond_0

    .line 177
    sget v1, Lcom/brakefield/infinitestudio/R$id;->outer_smooth_value:I

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 183
    sget v1, Lcom/brakefield/infinitestudio/R$id;->path_imageview:I

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 189
    sget v1, Lcom/brakefield/infinitestudio/R$id;->points_slider:I

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/SeekBar;

    if-eqz v12, :cond_0

    .line 195
    sget v1, Lcom/brakefield/infinitestudio/R$id;->points_value:I

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 201
    sget v1, Lcom/brakefield/infinitestudio/R$id;->rotate_slider:I

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/SeekBar;

    if-eqz v14, :cond_0

    .line 207
    sget v1, Lcom/brakefield/infinitestudio/R$id;->rotate_value:I

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 213
    sget v1, Lcom/brakefield/infinitestudio/R$id;->skew_x_slider:I

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/SeekBar;

    if-eqz v16, :cond_0

    .line 219
    sget v1, Lcom/brakefield/infinitestudio/R$id;->skew_x_value:I

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 225
    sget v1, Lcom/brakefield/infinitestudio/R$id;->skew_y_slider:I

    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/SeekBar;

    if-eqz v18, :cond_0

    .line 231
    sget v1, Lcom/brakefield/infinitestudio/R$id;->skew_y_value:I

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 237
    sget v1, Lcom/brakefield/infinitestudio/R$id;->spin_slider:I

    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/SeekBar;

    if-eqz v20, :cond_0

    .line 243
    sget v1, Lcom/brakefield/infinitestudio/R$id;->spin_value:I

    .line 244
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 249
    sget v1, Lcom/brakefield/infinitestudio/R$id;->squash_slider:I

    .line 250
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/SeekBar;

    if-eqz v22, :cond_0

    .line 255
    sget v1, Lcom/brakefield/infinitestudio/R$id;->squash_value:I

    .line 256
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    .line 261
    sget v1, Lcom/brakefield/infinitestudio/R$id;->stretch_slider:I

    .line 262
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/SeekBar;

    if-eqz v24, :cond_0

    .line 267
    sget v1, Lcom/brakefield/infinitestudio/R$id;->stretch_value:I

    .line 268
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_0

    .line 273
    new-instance v1, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v25}, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    return-object v1

    .line 279
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;
    .locals 2

    .line 134
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->path_creator:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 136
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 138
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/PathCreatorBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
