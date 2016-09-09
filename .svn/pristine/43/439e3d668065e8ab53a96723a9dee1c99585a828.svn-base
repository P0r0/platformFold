.class public Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;
.super Landroid/app/AlertDialog;
.source "UploadCircularProgressDialog.java"


# instance fields
.field private final circularProgressBar:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

.field private final descriptionTextView:Landroid/widget/TextView;

.field private final dialogCancelled:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILandroid/os/CancellationSignal;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "theme"    # I
    .param p3, "dialogCancelled"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 30
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const-string v2, "omp_video_upload_dialog"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "dialogView":Landroid/view/View;
    const-string v2, "circularprogressbar"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->circularProgressBar:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    .line 32
    const-string v2, "descriptionTextView"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->descriptionTextView:Landroid/widget/TextView;

    .line 33
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->circularProgressBar:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    invoke-virtual {v2, v4}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->setProgress(I)V

    .line 34
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->circularProgressBar:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    const-string v3, "0%"

    invoke-virtual {v2, v3}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->setTitle(Ljava/lang/String;)V

    .line 35
    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->dialogCancelled:Landroid/os/CancellationSignal;

    .line 36
    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 37
    invoke-super {p0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 38
    const/4 v2, -0x2

    const-string v3, "omp_cancel"

    invoke-static {p1, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog$1;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog$1;-><init>(Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;)V

    invoke-super {p0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;)Landroid/os/CancellationSignal;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->dialogCancelled:Landroid/os/CancellationSignal;

    return-object v0
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;)Lcom/lylc/widget/circularprogressbar/CircularProgressBar;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->circularProgressBar:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;I)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->setIncreaseProgress(I)V

    return-void
.end method

.method private setIncreaseProgress(I)V
    .registers 6
    .param p1, "progress"    # I

    .prologue
    .line 100
    monitor-enter p0

    .line 101
    :try_start_1
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->circularProgressBar:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    invoke-virtual {v1}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getProgress()I

    move-result v0

    .line 102
    .local v0, "currentProgress":I
    if-le p1, v0, :cond_26

    .line 103
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->circularProgressBar:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    invoke-virtual {v1, p1}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->setProgress(I)V

    .line 104
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->circularProgressBar:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->setTitle(Ljava/lang/String;)V

    .line 106
    :cond_26
    monitor-exit p0

    .line 107
    return-void

    .line 106
    .end local v0    # "currentProgress":I
    :catchall_28
    move-exception v1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v1
.end method


# virtual methods
.method public autoIncreaseProgressTo99()V
    .registers 7

    .prologue
    .line 48
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 50
    .local v1, "h":Landroid/os/Handler;
    const/16 v0, 0x2bc

    .line 51
    .local v0, "delay":I
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog$2;

    invoke-direct {v2, p0, v1}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog$2;-><init>(Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;Landroid/os/Handler;)V

    const-wide/16 v4, 0x2bc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    return-void
.end method

.method public disableCancel()V
    .registers 3

    .prologue
    .line 66
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 67
    .local v0, "cancelButton":Landroid/widget/Button;
    if-eqz v0, :cond_b

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 70
    :cond_b
    return-void
.end method

.method public getCircularProgressBar()Lcom/lylc/widget/circularprogressbar/CircularProgressBar;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->circularProgressBar:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    return-object v0
.end method

.method public getDescriptionTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->descriptionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isCancelEnabled()Z
    .registers 3

    .prologue
    .line 73
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 74
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    return v1
.end method

.method public setProgress(I)V
    .registers 5
    .param p1, "progress"    # I

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->circularProgressBar:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    invoke-virtual {v0, p1}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->setProgress(I)V

    .line 84
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->circularProgressBar:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->setTitle(Ljava/lang/String;)V

    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 85
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public updateDescription(Ljava/lang/String;)V
    .registers 3
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method
