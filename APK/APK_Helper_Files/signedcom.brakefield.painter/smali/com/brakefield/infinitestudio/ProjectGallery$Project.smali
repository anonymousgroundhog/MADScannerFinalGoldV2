.class public Lcom/brakefield/infinitestudio/ProjectGallery$Project;
.super Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;
.source "ProjectGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ProjectGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Project"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ProjectGallery$Project$OpenProjectTask;
    }
.end annotation


# instance fields
.field protected hasFullPreview:Z

.field protected location:Ljava/lang/String;

.field protected modifiedDate:J

.field final synthetic this$0:Lcom/brakefield/infinitestudio/ProjectGallery;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ProjectGallery;Ljava/lang/String;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    const/4 p1, 0x0

    .line 1235
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->hasFullPreview:Z

    .line 1239
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$bindViewHolder$2(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x6

    const/4 p4, 0x0

    if-ne p3, p2, :cond_0

    .line 1338
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

    .line 1372
    invoke-interface {p0, p1, p4}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p4
.end method


# virtual methods
.method public bindViewHolder(Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;)V
    .locals 9

    .line 1264
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    .line 1266
    sget v1, Lcom/brakefield/infinitestudio/R$id;->preview_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1268
    sget v2, Lcom/brakefield/infinitestudio/R$id;->background:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1000(Lcom/brakefield/infinitestudio/ProjectGallery;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1270
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    .line 1272
    sget v3, Lcom/brakefield/infinitestudio/R$id;->small_name:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1273
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    sget v4, Lcom/brakefield/infinitestudio/R$id;->small_date:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    .line 1276
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1280
    new-instance v6, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->getModifiedDate()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1281
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "MMM, dd yyyy h:mm a"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1285
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    sget v4, Lcom/brakefield/infinitestudio/R$id;->hint_type:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/4 v6, -0x1

    .line 1289
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1290
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->getTypeIcon()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1292
    iget-object v4, p1, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->container:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1294
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1296
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->hasFullPreview:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ProjectGallery;->previewProject:Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    if-ne v1, p0, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1100(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    .line 1298
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v4}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1100(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/brakefield/infinitestudio/R$dimen;->corner_radius:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 1299
    iget-object v4, p1, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1301
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 1302
    invoke-virtual {v1, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v4, Lcom/bumptech/glide/signature/ObjectKey;

    .line 1303
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->getModifiedDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v4, p1, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 1304
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 1308
    :goto_0
    iget-object v1, p1, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->textView:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 1310
    iget-object v4, p1, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->textView:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v4, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    iget-object v2, p1, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->textView:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v4, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$Project;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1312
    iget-object p1, p1, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->textView:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v2, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$Project;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    invoke-virtual {p1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1346
    new-instance p1, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v1}, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$Project;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1380
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    float-to-int v1, v1

    .line 1381
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-eqz v2, :cond_1

    .line 1382
    invoke-virtual {v2, v1, v1, v1, v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->setMargins(IIII)V

    .line 1384
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 1386
    :cond_2
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$600(Lcom/brakefield/infinitestudio/ProjectGallery;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-virtual {v1, p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->isProjectSelected(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const p1, 0x3f733333    # 0.95f

    .line 1391
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1392
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 1393
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 1387
    :cond_4
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1388
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 1389
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method public delete()V
    .locals 3

    .line 1456
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1600(Lcom/brakefield/infinitestudio/ProjectGallery;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1700(Lcom/brakefield/infinitestudio/ProjectGallery;)Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1457
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1200(Lcom/brakefield/infinitestudio/ProjectGallery;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1459
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->isZipFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/brakefield/infinitestudio/ProjectZip;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->delete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1460
    :cond_1
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    :goto_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1400(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    .line 1464
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/infinitestudio/ProjectGallery;->hide(ZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public deletePrompt()V
    .locals 3

    .line 1468
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 1469
    sget v1, Lcom/brakefield/infinitestudio/R$string;->prompt_delete_project:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1470
    sget v1, Lcom/brakefield/infinitestudio/R$string;->delete:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$Project;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1471
    sget v1, Lcom/brakefield/infinitestudio/R$string;->cancel:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1472
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public duplicate()V
    .locals 5

    .line 1476
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->getNewProjectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1478
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1479
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREF_PROJECT_NAME"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1481
    sput-object v0, Lcom/brakefield/infinitestudio/Main;->projectName:Ljava/lang/String;

    .line 1483
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->isZipFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1484
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/brakefield/infinitestudio/ProjectZip;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/brakefield/infinitestudio/ProjectZip;->suffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/brakefield/infinitestudio/FileManager;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1486
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/FileManager;->createDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1488
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1490
    :try_start_0
    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/FileManager;->copyDirectory(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1492
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1497
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->getProject(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    move-result-object v0

    .line 1499
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1600(Lcom/brakefield/infinitestudio/ProjectGallery;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1700(Lcom/brakefield/infinitestudio/ProjectGallery;)Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1500
    :cond_1
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1200(Lcom/brakefield/infinitestudio/ProjectGallery;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1502
    :goto_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1400(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    return-void
.end method

.method public exists()Z
    .locals 7

    .line 1528
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->isZipFile()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    const-string v3, "layers.json"

    invoke-static {v0, v3}, Lcom/brakefield/infinitestudio/ProjectZip;->getFile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1530
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->getFiles(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1532
    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    const-string v6, "layer"

    .line 1533
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public export()V
    .locals 0

    return-void
.end method

.method protected finishOpening()V
    .locals 0

    return-void
.end method

.method public getLocation()Ljava/lang/String;
    .locals 3

    .line 1516
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v2, Lorg/ejml/sparse/csc/factory/IRj/pUMrurWM;->EPPm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getModifiedDate()J
    .locals 4

    .line 1254
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->modifiedDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1255
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/brakefield/infinitestudio/ProjectZip;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1256
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->modifiedDate:J

    .line 1258
    :cond_0
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->modifiedDate:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1507
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview()Landroid/graphics/Bitmap;
    .locals 3

    .line 1398
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->isZipFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1399
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    const-string v1, "preview_full"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ProjectZip;->getFile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 1401
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1402
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewThumb()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1406
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->isZipFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    const-string v1, "preview"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ProjectZip;->getFile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 1408
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    .line 1410
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getTypeIcon()I
    .locals 1

    .line 1512
    sget v0, Lcom/brakefield/infinitestudio/R$drawable;->image:I

    return v0
.end method

.method public hasFullPreview()Z
    .locals 3

    .line 1243
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->isZipFile()Z

    move-result v0

    const-string v1, "preview_full"

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ProjectZip;->hasFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->hasFullPreview:Z

    goto :goto_0

    .line 1246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1247
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1246
    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->hasFullPreview:Z

    .line 1250
    :goto_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->hasFullPreview:Z

    return v0
.end method

.method public isValid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1433
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/FileManager;->directoryExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/brakefield/infinitestudio/R$string;->alert_already_exists:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1434
    :goto_0
    invoke-static {p1}, Lcom/brakefield/infinitestudio/FileManager;->containsInvalidPathCharacter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v0, Lcom/brakefield/infinitestudio/R$string;->alert_invalid_characters:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public isZipFile()Z
    .locals 3

    .line 1541
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->directoryExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1542
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/brakefield/infinitestudio/ProjectZip;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$bindViewHolder$0$com-brakefield-infinitestudio-ProjectGallery$Project(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1311
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p0, v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->show(Landroid/view/View;Lcom/brakefield/infinitestudio/ProjectGallery$Project;Z)V

    return-void
.end method

.method synthetic lambda$bindViewHolder$1$com-brakefield-infinitestudio-ProjectGallery$Project(Landroid/widget/EditText;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1325
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1326
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1327
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->rename(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$bindViewHolder$3$com-brakefield-infinitestudio-ProjectGallery$Project(Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/view/View;)Z
    .locals 4

    .line 1314
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 1316
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$layout;->rename:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1318
    sget v1, Lcom/brakefield/infinitestudio/R$id;->edit_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1319
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1320
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 1322
    invoke-virtual {p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1324
    new-instance v0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, v1, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$Project;Landroid/widget/EditText;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    .line 1330
    sget p1, Lcom/brakefield/infinitestudio/R$string;->ok:I

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1331
    sget p1, Lcom/brakefield/infinitestudio/R$string;->cancel:I

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1333
    invoke-virtual {p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1334
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 1336
    new-instance p2, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda7;

    invoke-direct {p2, v0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda7;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$bindViewHolder$4$com-brakefield-infinitestudio-ProjectGallery$Project(Landroid/widget/EditText;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1359
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1360
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1361
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->rename(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$bindViewHolder$6$com-brakefield-infinitestudio-ProjectGallery$Project(Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/view/View;)Z
    .locals 4

    .line 1348
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 1350
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$layout;->rename:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1352
    sget v1, Lcom/brakefield/infinitestudio/R$id;->edit_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1353
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 1356
    invoke-virtual {p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1358
    new-instance v0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v1, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$Project;Landroid/widget/EditText;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    .line 1364
    sget p1, Lcom/brakefield/infinitestudio/R$string;->ok:I

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1365
    sget p1, Lcom/brakefield/infinitestudio/R$string;->cancel:I

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1367
    invoke-virtual {p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1368
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 1370
    new-instance p2, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda5;

    invoke-direct {p2, v0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$Project$$ExternalSyntheticLambda5;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$deletePrompt$7$com-brakefield-infinitestudio-ProjectGallery$Project(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1470
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->delete()V

    return-void
.end method

.method public open()V
    .locals 4

    .line 1440
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1500(Lcom/brakefield/infinitestudio/ProjectGallery;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->showProgress()V

    .line 1443
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1444
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_PROJECT_NAME"

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1445
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    sput-object v0, Lcom/brakefield/infinitestudio/Main;->projectName:Ljava/lang/String;

    .line 1447
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    new-instance v1, Lcom/brakefield/infinitestudio/ProjectGallery$Project$OpenProjectTask;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/infinitestudio/ProjectGallery$Project$OpenProjectTask;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$Project;Ljava/lang/String;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/brakefield/infinitestudio/ProjectGallery$Project$OpenProjectTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1502(Lcom/brakefield/infinitestudio/ProjectGallery;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public rename(Ljava/lang/String;)V
    .locals 4

    .line 1415
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->isValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1418
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-direct {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 1419
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1420
    sget v0, Lcom/brakefield/infinitestudio/R$string;->ok:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1421
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void

    .line 1425
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->isZipFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/brakefield/infinitestudio/ProjectZip;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/brakefield/infinitestudio/ProjectZip;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/FileManager;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1426
    :cond_1
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/brakefield/infinitestudio/FileManager;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    :goto_0
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->location:Ljava/lang/String;

    .line 1428
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$200(Lcom/brakefield/infinitestudio/ProjectGallery;)Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1521
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "project"

    .line 1522
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
