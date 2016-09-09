.class public Lcom/vivo/sdkplugin/activity/SetPassWordActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/content/res/Resources;

.field private i:I

.field private j:I

.field private k:Landroid/os/HandlerThread;

.field private l:Lcom/vivo/sdkplugin/activity/dZ;

.field private m:Landroid/os/Handler;

.field private n:Landroid/widget/CheckBox;

.field private o:Landroid/content/Context;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lcom/vivo/sdkplugin/net/HttpConnect;

.field private v:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->f:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->h:Landroid/content/res/Resources;

    iput v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->i:I

    iput v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->j:I

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->k:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->l:Lcom/vivo/sdkplugin/activity/dZ;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->m:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->s:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->t:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->v:I

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;ZLjava/lang/String;)I
    .registers 8

    const/4 v4, 0x6

    const/4 v0, 0x4

    const-string v1, "SetPassWordActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "passwordFinished="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " password: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2a

    if-eqz p1, :cond_29

    const/4 v0, 0x1

    :cond_29
    :goto_29
    return v0

    :cond_2a
    if-lt v1, v4, :cond_30

    const/16 v2, 0x10

    if-le v1, v2, :cond_38

    :cond_30
    if-ge v1, v4, :cond_36

    if-eqz p1, :cond_29

    const/4 v0, 0x2

    goto :goto_29

    :cond_36
    const/4 v0, 0x3

    goto :goto_29

    :cond_38
    invoke-static {p2}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x7

    goto :goto_29

    :cond_40
    const/4 v0, 0x5

    goto :goto_29
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;ZLjava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x1

    invoke-static {v0, p2, p3}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(ZLjava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    if-eqz p0, :cond_a

    const/4 v0, 0x6

    goto :goto_a

    :cond_15
    const/4 v0, 0x7

    goto :goto_a
.end method

.method private a(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->showDialog(I)V

    iput p1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->v:I

    :cond_b
    return-void
.end method

.method private a(ILandroid/widget/EditText;)V
    .registers 6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_7e

    :goto_4
    return-void

    :pswitch_5
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_password_empty_wrong"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_1b
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_password_formatless_wrong"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_31
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_password_formatmore_wrong"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_47
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_password_format_character_wrong"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_5d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_63
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_password_confirm_wrong"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :pswitch_79
    invoke-virtual {p2, v1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1b
        :pswitch_31
        :pswitch_79
        :pswitch_47
        :pswitch_63
        :pswitch_5d
    .end packed-switch
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uuid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->r:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/MD5;->encode32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "-----------newPassword: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->p:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "   md5Pwd:  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v1, "e"

    const-string v6, "1"

    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "newPwd"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "code"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->s:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "t"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->t:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-virtual {v0, v5}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_RESETPASSWORD_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/ea;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/ea;-><init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;B)V

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;I)V
    .registers 5

    const/4 v2, -0x1

    const/4 v0, 0x0

    :try_start_2
    iget v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->v:I

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->v:I

    if-ne v1, v0, :cond_10

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->dismissDialog(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->v:I
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_10} :catch_11

    :cond_10
    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_10
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;ILandroid/widget/EditText;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(ILandroid/widget/EditText;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->p:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_a

    const/4 v1, 0x1

    :cond_9
    return v1

    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_16

    const/16 v3, 0x5a

    if-le v2, v3, :cond_26

    :cond_16
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1e

    const/16 v3, 0x7a

    if-le v2, v3, :cond_26

    :cond_1e
    const/16 v3, 0x30

    if-lt v2, v3, :cond_9

    const/16 v3, 0x39

    if-gt v2, v3, :cond_9

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;I)V
    .registers 3

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->o:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;I)V
    .registers 2

    iput p1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->i:I

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;I)V
    .registers 2

    iput p1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->j:I

    return-void
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V
    .registers 9

    const/4 v7, 0x6

    const/4 v2, 0x7

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->p:Ljava/lang/String;

    const-string v0, "SetPassWordActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "passwordFinished=true"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_98

    move v0, v1

    :goto_3d
    iput v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->i:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->q:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->j:I

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->i:I

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->d:Landroid/widget/EditText;

    invoke-direct {p0, v0, v4}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(ILandroid/widget/EditText;)V

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->j:I

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->e:Landroid/widget/EditText;

    invoke-direct {p0, v0, v4}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(ILandroid/widget/EditText;)V

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->i:I

    if-ne v0, v2, :cond_ca

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->j:I

    if-ne v0, v2, :cond_ca

    move v0, v1

    :goto_60
    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->k:Landroid/os/HandlerThread;

    if-nez v0, :cond_81

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "com.bbk.BIND_NAME"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->k:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/dZ;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->k:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/vivo/sdkplugin/activity/dZ;-><init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->l:Lcom/vivo/sdkplugin/activity/dZ;

    :cond_81
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->m:Landroid/os/Handler;

    if-nez v0, :cond_8c

    new-instance v0, Lcom/vivo/sdkplugin/activity/eb;

    invoke-direct {v0, p0, v3}, Lcom/vivo/sdkplugin/activity/eb;-><init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->m:Landroid/os/Handler;

    :cond_8c
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_c1

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(I)V

    :cond_97
    :goto_97
    return-void

    :cond_98
    if-lt v5, v7, :cond_9e

    const/16 v0, 0x10

    if-le v5, v0, :cond_a4

    :cond_9e
    if-ge v5, v7, :cond_a2

    const/4 v0, 0x2

    goto :goto_3d

    :cond_a2
    const/4 v0, 0x3

    goto :goto_3d

    :cond_a4
    move v0, v3

    :goto_a5
    if-lt v0, v5, :cond_a9

    move v0, v2

    goto :goto_3d

    :cond_a9
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-le v6, v7, :cond_b5

    const/16 v7, 0x7f

    if-le v6, v7, :cond_be

    :cond_b5
    const-string v0, "SetPassWordActivity"

    const-string v4, "PASSWORD_FORMAT_CHARACTER_WRONG"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    goto :goto_3d

    :cond_be
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    :cond_c1
    invoke-direct {p0, v3}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->l:Lcom/vivo/sdkplugin/activity/dZ;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/dZ;->sendEmptyMessage(I)Z

    goto :goto_97

    :cond_ca
    move v0, v3

    goto :goto_60
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;I)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->v:I

    return-void
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->i:I

    return v0
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V
    .registers 3

    const/4 v1, 0x7

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->i:I

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->j:I

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->c:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_f
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->j:I

    return v0
.end method


# virtual methods
.method public cancelBgThread()V
    .registers 4

    const-string v0, "SetPassWordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelBgThread, mBackgroundThread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->k:Landroid/os/HandlerThread;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->k:Landroid/os/HandlerThread;

    :cond_22
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/net/HttpConnect;->cancelConnect()V

    :cond_2b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->o:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_set_password"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "new_password_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "confirm_password_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->d:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->e:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "show_password_checkbox"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->n:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->h:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->h:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "vivo_indicator_input_error"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->h:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "vivo_indicator_input_pass"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->g:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dQ;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dQ;-><init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dR;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dR;-><init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dS;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dS;-><init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dT;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dT;-><init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dU;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dU;-><init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dV;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dV;-><init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dW;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dW;-><init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->n:Landroid/widget/CheckBox;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dX;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dX;-><init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->r:Ljava/lang/String;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16c

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->s:Ljava/lang/String;

    :cond_16c
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_180

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->t:Ljava/lang/String;

    :cond_180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-----------------type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    const-string v0, "SetPassWordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreateDialog, id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->v:I

    sparse-switch p1, :sswitch_data_52

    const-string v0, "SetPassWordActivity"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_24
    return-object v0

    :sswitch_25
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_loading_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_24

    :sswitch_3e
    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-direct {v0, p0, p0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/vivo/sdkplugin/activity/dY;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dY;-><init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_20

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_25
        0x64 -> :sswitch_3e
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onDestroy()V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->cancelBgThread()V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    const-string v0, "SetPassWordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKey,keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", curDlgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method protected onResume()V
    .registers 5

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onResume()V

    const-string v0, "SetPassWordActivity"

    const-string v1, "SetPassWordActivity,onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->n:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_show_password"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    return-void
.end method
