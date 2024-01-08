.class public Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;
.super Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;
.source "ProjectGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ProjectGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProjectFolder"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field projects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/brakefield/infinitestudio/ProjectGallery;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V
    .locals 0

    .line 992
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    const-string p1, "Folder"

    .line 994
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->name:Ljava/lang/String;

    .line 996
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$bindViewHolder$2(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x6

    const/4 p4, 0x0

    if-ne p3, p2, :cond_0

    .line 1089
    invoke-interface {p0, p1, p4}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p4
.end method

.method static synthetic lambda$bindViewHolder$5(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x6

    const/4 p4, 0x0

    if-ne p3, p2, :cond_0

    .line 1122
    invoke-interface {p0, p1, p4}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p4
.end method


# virtual methods
.method public bindViewHolder(Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1001
    invoke-virtual/range {p1 .. p1}, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->getView()Landroid/view/View;

    move-result-object v2

    .line 1002
    sget v3, Lcom/brakefield/infinitestudio/R$id;->preview_container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1004
    sget v4, Lcom/brakefield/infinitestudio/R$id;->background:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v5}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1000(Lcom/brakefield/infinitestudio/ProjectGallery;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1005
    iget-object v4, v1, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v4, 0x8

    .line 1007
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    iget-object v3, v1, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->container:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1011
    iget-object v3, v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1100(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/brakefield/infinitestudio/R$dimen;->margin_small:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1013
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 1015
    sget v7, Lcom/brakefield/infinitestudio/R$id;->small_name:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1016
    iget-object v8, v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    sget v8, Lcom/brakefield/infinitestudio/R$id;->small_date:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1019
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1021
    sget v4, Lcom/brakefield/infinitestudio/R$id;->hint_type:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1022
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->getTypeIcon()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1024
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1025
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1027
    invoke-static {v9}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v10

    float-to-int v10, v10

    .line 1029
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1030
    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1031
    invoke-virtual {v11, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1033
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    iget-object v8, v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    check-cast v12, Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v8, v5

    :goto_1
    if-ge v8, v6, :cond_3

    .line 1038
    new-instance v12, Landroid/widget/LinearLayout;

    iget-object v13, v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v13, v13, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1039
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1040
    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v13, v5

    :goto_2
    if-ge v13, v6, :cond_2

    .line 1044
    new-instance v14, Landroid/widget/ImageView;

    iget-object v15, v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v15, v15, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-direct {v14, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1045
    invoke-virtual {v14, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1046
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1047
    invoke-virtual {v14, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1048
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 1049
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    .line 1051
    iget-object v5, v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v5, v5, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    .line 1052
    invoke-virtual {v5, v15}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    new-instance v9, Lcom/bumptech/glide/signature/ObjectKey;

    .line 1053
    invoke-virtual {v15}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->getModifiedDate()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v9, v15}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    .line 1054
    invoke-virtual {v5, v14}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 1056
    :cond_1
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_2

    .line 1059
    :cond_2
    iget-object v5, v1, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->container:Landroid/view/ViewGroup;

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_1

    .line 1062
    :cond_3
    iget-object v3, v1, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->textView:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v4, v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    iget-object v3, v1, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->textView:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v4, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;)V

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1064
    iget-object v1, v1, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->textView:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v3, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;)V

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1097
    new-instance v1, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1130
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 1132
    :cond_4
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$600(Lcom/brakefield/infinitestudio/ProjectGallery;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->isProjectSelected(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const v1, 0x3f733333    # 0.95f

    .line 1137
    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1138
    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    const v1, 0x3eb33333    # 0.35f

    .line 1139
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    :cond_6
    :goto_3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1133
    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1134
    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1135
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    return-void
.end method

.method public delete()V
    .locals 2

    .line 1187
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->delete()V

    goto :goto_0

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1200(Lcom/brakefield/infinitestudio/ProjectGallery;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1191
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1300(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    .line 1193
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1400(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    return-void
.end method

.method public deletePrompt()V
    .locals 3

    .line 1177
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 1178
    sget v1, Lcom/brakefield/infinitestudio/R$string;->prompt_delete_folder_projects:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1179
    sget v1, Lcom/brakefield/infinitestudio/R$string;->delete:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1180
    sget v1, Lcom/brakefield/infinitestudio/R$string;->cancel:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1181
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public duplicate()V
    .locals 0

    return-void
.end method

.method public exists()Z
    .locals 1

    .line 1228
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public export()V
    .locals 0

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1204
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected getTypeIcon()I
    .locals 1

    .line 1209
    sget v0, Lcom/brakefield/infinitestudio/R$drawable;->folder:I

    return v0
.end method

.method synthetic lambda$bindViewHolder$0$com-brakefield-infinitestudio-ProjectGallery$ProjectFolder(Landroid/view/View;)V
    .locals 0

    .line 1063
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->open()V

    return-void
.end method

.method synthetic lambda$bindViewHolder$1$com-brakefield-infinitestudio-ProjectGallery$ProjectFolder(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1075
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1076
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->rename(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$bindViewHolder$3$com-brakefield-infinitestudio-ProjectGallery$ProjectFolder(Landroid/view/View;)Z
    .locals 4

    .line 1066
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 1068
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$layout;->rename:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1070
    sget v1, Lcom/brakefield/infinitestudio/R$id;->edit_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1071
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 1074
    new-instance v3, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;Landroid/widget/EditText;)V

    .line 1079
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1081
    sget v0, Lcom/brakefield/infinitestudio/R$string;->ok:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1082
    sget v0, Lcom/brakefield/infinitestudio/R$string;->cancel:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1084
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1085
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 1087
    new-instance v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, v3, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda1;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$bindViewHolder$4$com-brakefield-infinitestudio-ProjectGallery$ProjectFolder(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1110
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1111
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->rename(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$bindViewHolder$6$com-brakefield-infinitestudio-ProjectGallery$ProjectFolder(Landroid/view/View;)Z
    .locals 4

    .line 1099
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 1101
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$layout;->rename:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1103
    sget v1, Lcom/brakefield/infinitestudio/R$id;->edit_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1104
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1105
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 1107
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1109
    new-instance v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;Landroid/widget/EditText;)V

    .line 1114
    sget v3, Lcom/brakefield/infinitestudio/R$string;->ok:I

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1115
    sget v3, Lcom/brakefield/infinitestudio/R$string;->cancel:I

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1117
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1118
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 1120
    new-instance v2, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder$$ExternalSyntheticLambda3;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$deletePrompt$7$com-brakefield-infinitestudio-ProjectGallery$ProjectFolder(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1179
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->delete()V

    return-void
.end method

.method public open()V
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->showFolder(Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;)V

    return-void
.end method

.method public rename(Ljava/lang/String;)V
    .locals 0

    .line 1198
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->name:Ljava/lang/String;

    .line 1199
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$200(Lcom/brakefield/infinitestudio/ProjectGallery;)Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1215
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1217
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1219
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "name"

    .line 1220
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "project-folder"

    .line 1221
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method
