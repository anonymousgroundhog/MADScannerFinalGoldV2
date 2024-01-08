.class public Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;
.super Ljava/lang/Object;
.source "ExportViewController.java"


# instance fields
.field private exporter:Lcom/brakefield/painter/Exporter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;)Lcom/brakefield/painter/Exporter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    return-object p0
.end method

.method private getDefaultExporter(Landroid/content/Context;)Lcom/brakefield/painter/Exporter;
    .locals 1

    .line 249
    new-instance v0, Lcom/brakefield/painter/Exporter;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/Exporter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static isValid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 212
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/brakefield/infinitestudio/FileManager;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12002f

    .line 213
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$show$1(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$show$2(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$show$3(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$show$6(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 166
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$show$7(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x6

    const/4 p4, 0x0

    if-ne p3, p2, :cond_0

    .line 172
    invoke-interface {p0, p1, p4}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p4
.end method

.method static synthetic lambda$show$8(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p2, 0x42

    const/4 p4, 0x0

    if-ne p3, p2, :cond_0

    .line 179
    invoke-interface {p0, p1, p4}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p4
.end method


# virtual methods
.method protected getNewImageName(Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 5

    .line 232
    new-instance v0, Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProject()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;-><init>(J)V

    .line 233
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Untitled"

    :cond_0
    const/4 v1, 0x0

    .line 240
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/brakefield/infinitestudio/FileManager;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_2

    move-object v2, v3

    :cond_2
    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getSuffix(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    const-string p1, ".pntr"

    return-object p1

    :pswitch_1
    const-string p1, ".webp"

    return-object p1

    :pswitch_2
    const-string p1, ".zip"

    return-object p1

    :pswitch_3
    const-string p1, ".psd"

    return-object p1

    :pswitch_4
    const-string p1, ".jpg"

    return-object p1

    :pswitch_5
    const-string p1, ".png"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$show$0$com-brakefield-painter-ui-viewcontrollers-ExportViewController(Lcom/brakefield/painter/databinding/ExportViewControllerBinding;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    add-int/lit8 p3, p3, 0x1

    .line 125
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    iput p3, p2, Lcom/brakefield/painter/Exporter;->quality:I

    .line 126
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->qualitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$show$4$com-brakefield-painter-ui-viewcontrollers-ExportViewController(Lcom/brakefield/painter/databinding/ExportViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    iget-object v1, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->editName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/brakefield/painter/Exporter;->name:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    iget-object v1, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->backgroundToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/brakefield/painter/Exporter;->keepBackground:Z

    .line 149
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    iget-object v1, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->projectHistoryToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/brakefield/painter/Exporter;->saveProjectHistory:Z

    .line 150
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->projectTimelapseToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->isChecked()Z

    move-result p1

    iput-boolean p1, v0, Lcom/brakefield/painter/Exporter;->saveProjectTimelapse:Z

    .line 151
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->exporter:Lcom/brakefield/painter/Exporter;

    .line 152
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 154
    invoke-static {p3}, Lcom/brakefield/infinitestudio/AppRater;->launch(Landroid/app/Activity;)Z

    return-void
.end method

.method synthetic lambda$show$5$com-brakefield-painter-ui-viewcontrollers-ExportViewController(Lcom/brakefield/painter/databinding/ExportViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 146
    new-instance p4, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;Lcom/brakefield/painter/databinding/ExportViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    sput-object p4, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveListener:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 156
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsSaveProject:Z

    .line 157
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 12

    .line 45
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->getDefaultExporter(Landroid/content/Context;)Lcom/brakefield/painter/Exporter;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    .line 49
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->isDemoUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-static {p1}, Lcom/brakefield/painter/billing/PainterDemo;->promptDemo(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    move-result-object v0

    .line 54
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->editName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    iget v2, v2, Lcom/brakefield/painter/Exporter;->type:I

    invoke-virtual {p0, v2}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->getSuffix(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->getNewImageName(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->editName:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 57
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->editName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result v1

    .line 59
    iget-object v4, v0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->formatDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;Lcom/brakefield/painter/databinding/ExportViewControllerBinding;I)V

    new-instance v6, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    const/16 v7, 0xa

    new-array v7, v7, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    new-instance v8, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerSectionHeaderItem;

    const v9, 0x7f12020a

    .line 92
    invoke-static {v9}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerSectionHeaderItem;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v3

    new-instance v8, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const-string v9, "PNG"

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v8, v9, v3}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v8, v7, v2

    new-instance v3, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const/4 v8, 0x0

    sget-object v8, Lkotlin/sequences/xWeI/PLNIgvxmKA;->yCDlQXbb:Ljava/lang/String;

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v8, 0x2

    aput-object v3, v7, v8

    new-instance v3, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const-string v9, "WEBP"

    const/4 v10, 0x4

    .line 95
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v3, v9, v11}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v9, 0x3

    aput-object v3, v7, v9

    new-instance v3, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerSectionHeaderItem;

    const v11, 0x7f120234

    .line 96
    invoke-static {v11}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerSectionHeaderItem;-><init>(Ljava/lang/String;)V

    aput-object v3, v7, v10

    new-instance v3, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const-string v10, "PSD"

    .line 97
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v3, v10, v8}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v8, 0x5

    aput-object v3, v7, v8

    new-instance v3, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const-string v10, "ZIP"

    .line 98
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v3, v10, v9}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v9, 0x6

    aput-object v3, v7, v9

    new-instance v3, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerSectionHeaderItem;

    const v10, 0x7f120a05

    .line 99
    invoke-static {v10}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerSectionHeaderItem;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x7

    aput-object v3, v7, v10

    new-instance v3, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v10, 0x7f1209cf

    .line 100
    invoke-static {v10}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v3, v10, v8}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v8, 0x8

    aput-object v3, v7, v8

    new-instance v3, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v8, 0x7f120ae6

    .line 101
    invoke-static {v8}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v8, 0x9

    aput-object v3, v7, v8

    invoke-direct {v6, p1, v7}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    iget v3, v3, Lcom/brakefield/painter/Exporter;->type:I

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 59
    invoke-static {v4, v5, v6, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    .line 106
    iget-object v3, v0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->editName:Landroid/widget/EditText;

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;Lcom/brakefield/painter/databinding/ExportViewControllerBinding;I)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->qualitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 v3, 0x63

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    .line 122
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->qualitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;Lcom/brakefield/painter/databinding/ExportViewControllerBinding;)V

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 128
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->qualitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    iget v3, v3, Lcom/brakefield/painter/Exporter;->quality:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 130
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->backgroundToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda2;-><init>()V

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    iget-boolean v3, v3, Lcom/brakefield/painter/Exporter;->keepBackground:Z

    invoke-static {v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 135
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->projectTimelapseToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda3;-><init>()V

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    iget-boolean v3, v3, Lcom/brakefield/painter/Exporter;->saveProjectTimelapse:Z

    invoke-static {v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 140
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->projectHistoryToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda4;-><init>()V

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    iget-boolean v3, v3, Lcom/brakefield/painter/Exporter;->saveProjectHistory:Z

    invoke-static {v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 145
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;Lcom/brakefield/painter/databinding/ExportViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    .line 160
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->exporter:Lcom/brakefield/painter/Exporter;

    iget p2, p2, Lcom/brakefield/painter/Exporter;->type:I

    invoke-virtual {p0, v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->updateSettings(Lcom/brakefield/painter/databinding/ExportViewControllerBinding;I)V

    .line 162
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p2, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f12017c

    .line 164
    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f12009e

    .line 165
    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f120261

    .line 166
    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda6;

    invoke-direct {v3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda6;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 168
    invoke-virtual {p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 170
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->editName:Landroid/widget/EditText;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda7;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 177
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->editName:Landroid/widget/EditText;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda8;

    invoke-direct {v0, v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$$ExternalSyntheticLambda8;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_0
    return-void
.end method

.method updateSettings(Lcom/brakefield/painter/databinding/ExportViewControllerBinding;I)V
    .locals 2

    const/4 v0, 0x4

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v1, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->backgroundToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    goto :goto_1

    .line 190
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->backgroundToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    :goto_1
    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    if-ne p2, v0, :cond_2

    goto :goto_2

    .line 198
    :cond_2
    iget-object v0, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->qualitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    goto :goto_3

    .line 196
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->qualitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    :goto_3
    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 202
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->projectHistoryToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    .line 203
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->projectTimelapseToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_4

    .line 205
    :cond_4
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->projectHistoryToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    .line 206
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->projectTimelapseToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    :goto_4
    return-void
.end method
