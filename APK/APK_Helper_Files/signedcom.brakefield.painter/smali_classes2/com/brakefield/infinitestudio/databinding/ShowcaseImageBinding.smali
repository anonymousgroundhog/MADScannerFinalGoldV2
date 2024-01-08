.class public final Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;
.super Ljava/lang/Object;
.source "ShowcaseImageBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appButton:Landroid/widget/ImageView;

.field public final artistText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

.field public final favoriteButton:Landroid/widget/ImageView;

.field public final image:Lcom/brakefield/infinitestudio/ui/PreviewView;

.field public final imageDialog:Landroid/widget/FrameLayout;

.field public final loveText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final moreArtworkButton:Landroid/widget/ImageView;

.field public final optionsButton:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final userUploadToolBar:Landroid/widget/LinearLayout;

.field public final userUploadsContainer:Landroid/widget/LinearLayout;

.field public final userUploadsGrid:Landroid/widget/GridView;

.field public final userUploadsGridContainer:Landroid/widget/LinearLayout;

.field public final userUploadsGridText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/PreviewView;Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/GridView;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 79
    iput-object p2, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->appButton:Landroid/widget/ImageView;

    .line 80
    iput-object p3, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->artistText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 81
    iput-object p4, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    .line 82
    iput-object p5, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->favoriteButton:Landroid/widget/ImageView;

    .line 83
    iput-object p6, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->image:Lcom/brakefield/infinitestudio/ui/PreviewView;

    .line 84
    iput-object p7, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->imageDialog:Landroid/widget/FrameLayout;

    .line 85
    iput-object p8, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->loveText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 86
    iput-object p9, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->moreArtworkButton:Landroid/widget/ImageView;

    .line 87
    iput-object p10, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->optionsButton:Landroid/widget/ImageView;

    .line 88
    iput-object p11, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->userUploadToolBar:Landroid/widget/LinearLayout;

    .line 89
    iput-object p12, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->userUploadsContainer:Landroid/widget/LinearLayout;

    .line 90
    iput-object p13, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->userUploadsGrid:Landroid/widget/GridView;

    .line 91
    iput-object p14, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->userUploadsGridContainer:Landroid/widget/LinearLayout;

    .line 92
    iput-object p15, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->userUploadsGridText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 122
    sget v1, Lcom/brakefield/infinitestudio/R$id;->app_button:I

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 128
    sget v1, Lcom/brakefield/infinitestudio/R$id;->artist_text:I

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v6, :cond_0

    .line 134
    sget v1, Lcom/brakefield/infinitestudio/R$id;->blur_view:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    if-eqz v7, :cond_0

    .line 140
    sget v1, Lcom/brakefield/infinitestudio/R$id;->favorite_button:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 146
    sget v1, Lcom/brakefield/infinitestudio/R$id;->image:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/brakefield/infinitestudio/ui/PreviewView;

    if-eqz v9, :cond_0

    .line 152
    sget v1, Lcom/brakefield/infinitestudio/R$id;->image_dialog:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    .line 158
    sget v1, Lcom/brakefield/infinitestudio/R$id;->love_text:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v11, :cond_0

    .line 164
    sget v1, Lcom/brakefield/infinitestudio/R$id;->more_artwork_button:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    .line 170
    sget v1, Lcom/brakefield/infinitestudio/R$id;->options_button:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 176
    sget v1, Lcom/brakefield/infinitestudio/R$id;->user_upload_tool_bar:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    .line 182
    sget v1, Lcom/brakefield/infinitestudio/R$id;->user_uploads_container:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    .line 188
    sget v1, Lcom/brakefield/infinitestudio/R$id;->user_uploads_grid:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/GridView;

    if-eqz v16, :cond_0

    .line 194
    sget v1, Lcom/brakefield/infinitestudio/R$id;->user_uploads_grid_container:I

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/LinearLayout;

    if-eqz v17, :cond_0

    .line 200
    sget v1, Lcom/brakefield/infinitestudio/R$id;->user_uploads_grid_text:I

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v18, :cond_0

    .line 206
    new-instance v1, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/PreviewView;Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/GridView;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v1

    .line 211
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;
    .locals 2

    .line 109
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->showcase_image:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/ShowcaseImageBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
