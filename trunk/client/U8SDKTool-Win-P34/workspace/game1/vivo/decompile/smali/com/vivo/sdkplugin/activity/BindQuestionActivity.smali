.class public Lcom/vivo/sdkplugin/activity/BindQuestionActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:I

.field private R:I

.field private S:Z

.field private T:Landroid/widget/Button;

.field private U:Landroid/widget/Button;

.field private V:Landroid/content/Context;

.field private W:Landroid/widget/LinearLayout;

.field private X:[Ljava/lang/String;

.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/content/res/Resources;

.field private s:Landroid/os/HandlerThread;

.field private t:Lcom/vivo/sdkplugin/activity/am;

.field private u:Landroid/os/Handler;

.field private v:Lorg/json/JSONArray;

.field private w:Lorg/json/JSONArray;

.field private x:I

.field private y:Ljava/util/ArrayList;

.field private z:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->p:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->q:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->r:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->s:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->t:Lcom/vivo/sdkplugin/activity/am;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->u:Landroid/os/Handler;

    iput v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->x:I

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->A:Z

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->B:Z

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->C:Z

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->D:Z

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->E:Z

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->F:Z

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->G:Z

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->H:Z

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->I:Z

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->J:Z

    const-string v0, "........"

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->P:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->Q:I

    iput v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->R:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->S:Z

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->V:Landroid/content/Context;

    return-void
.end method

.method static synthetic A(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->M:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic B(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic C(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->N:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic D(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->x:I

    return v0
.end method

.method static synthetic E(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic F(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic G(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic H(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic I(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "BindQuestionActivityLog"

    const-string v3, "checkCustomLayout"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3e

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->S:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->j:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, "key_questions1"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->j:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_7f

    move v0, v1

    :goto_26
    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->A:Z

    const-string v0, "BindQuestionActivityLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "question1Passed="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->A:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5d

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->S:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->k:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    if-eqz v0, :cond_81

    const-string v0, "key_questions2"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->k:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_81

    move v0, v1

    :goto_5b
    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->B:Z

    :cond_5d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_7b

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->S:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->l:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    if-eqz v0, :cond_83

    const-string v0, "key_questions3"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->l:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_83

    :goto_79
    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->C:Z

    :cond_7b
    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b()Z

    return-void

    :cond_7f
    move v0, v2

    goto :goto_26

    :cond_81
    move v0, v2

    goto :goto_5b

    :cond_83
    move v1, v2

    goto :goto_79
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->V:Landroid/content/Context;

    const-string v1, "drawable"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_GET_QUESTION_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/ao;

    const/4 v3, 0x0

    invoke-direct {v7, p0, v3}, Lcom/vivo/sdkplugin/activity/ao;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;B)V

    move-object v3, v2

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v2
.end method

.method private a(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->showDialog(I)V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;I)V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Lorg/json/JSONArray;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->v:Lorg/json/JSONArray;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->J:Z

    return-void
.end method

.method private a()Z
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->P:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    :cond_2d
    :goto_2d
    return v0

    :cond_2e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->P:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    :cond_3c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    :cond_48
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private a(Landroid/widget/EditText;I)Z
    .registers 16

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14d

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move v5, v4

    move v0, v4

    :goto_19
    if-lt v5, v7, :cond_41

    :goto_1b
    if-nez v0, :cond_5c

    if-nez p2, :cond_58

    move v0, v3

    :cond_20
    :goto_20
    const-string v1, "BindQuestionActivityLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "checkFormat(),checkResult="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_150

    const-string v1, "BindQuestionActivityLog"

    const-string v2, "Unsupport type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    :goto_3e
    if-nez v0, :cond_147

    :goto_40
    return v3

    :cond_41
    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    if-ne v8, v3, :cond_55

    add-int/lit8 v0, v0, 0x1

    :goto_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_55
    add-int/lit8 v0, v0, 0x2

    goto :goto_52

    :cond_58
    if-ne p2, v3, :cond_14a

    const/4 v0, 0x2

    goto :goto_20

    :cond_5c
    if-lez v0, :cond_62

    const/16 v5, 0x18

    if-le v0, v5, :cond_6a

    :cond_62
    if-nez p2, :cond_66

    move v0, v1

    goto :goto_20

    :cond_66
    if-ne p2, v3, :cond_14a

    move v0, v2

    goto :goto_20

    :cond_6a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    move v5, v4

    move v0, v4

    :goto_70
    if-ge v5, v7, :cond_20

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const-string v9, "testChar"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "c="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", cnum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x61

    if-lt v8, v9, :cond_9c

    const/16 v9, 0x7a

    if-le v8, v9, :cond_de

    :cond_9c
    const/16 v9, 0x30

    if-lt v8, v9, :cond_a4

    const/16 v9, 0x39

    if-le v8, v9, :cond_de

    :cond_a4
    const/16 v9, 0x41

    if-lt v8, v9, :cond_ac

    const/16 v9, 0x5a

    if-le v8, v9, :cond_de

    :cond_ac
    const/16 v9, 0x5f

    if-eq v8, v9, :cond_de

    const/16 v9, 0x4e00

    if-lt v8, v9, :cond_b9

    const v9, 0x9f9f

    if-le v8, v9, :cond_de

    :cond_b9
    const/16 v9, 0x20

    if-lt v8, v9, :cond_c1

    const/16 v9, 0x40

    if-le v8, v9, :cond_de

    :cond_c1
    const v9, 0xff01

    if-lt v8, v9, :cond_cb

    const v9, 0xff51

    if-le v8, v9, :cond_de

    :cond_cb
    const/16 v9, 0x3000

    if-lt v8, v9, :cond_d3

    const/16 v9, 0x301f

    if-le v8, v9, :cond_de

    :cond_d3
    const/16 v9, 0x2010

    if-lt v8, v9, :cond_db

    const/16 v9, 0x201f

    if-le v8, v9, :cond_de

    :cond_db
    if-nez p2, :cond_e1

    move v0, v1

    :cond_de
    :goto_de
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    :cond_e1
    if-ne p2, v3, :cond_de

    move v0, v2

    goto :goto_de

    :pswitch_e5
    iget-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->S:Z

    if-eqz v1, :cond_3e

    iput-boolean v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->S:Z

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->r:Landroid/content/res/Resources;

    const-string v2, "vivo_answer_empty_wrong"

    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3e

    :pswitch_fe
    iget-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->S:Z

    if-eqz v1, :cond_117

    iput-boolean v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->S:Z

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->r:Landroid/content/res/Resources;

    const-string v2, "vivo_custom_question_empty_wrong"

    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3e

    :cond_117
    invoke-virtual {p1, v12, v12}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3e

    :pswitch_11c
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->r:Landroid/content/res/Resources;

    const-string v2, "vivo_answer_format_wrong"

    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3e

    :pswitch_12f
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->r:Landroid/content/res/Resources;

    const-string v2, "vivo_custom_question_format_wrong"

    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3e

    :pswitch_142
    invoke-virtual {p1, v12, v12}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3e

    :cond_147
    move v3, v4

    goto/16 :goto_40

    :cond_14a
    move v0, v4

    goto/16 :goto_20

    :cond_14d
    move v0, v4

    goto/16 :goto_1b

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_142
        :pswitch_e5
        :pswitch_fe
        :pswitch_11c
        :pswitch_12f
    .end packed-switch
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Landroid/widget/EditText;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Landroid/widget/EditText;)Z
    .registers 9

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->z:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :cond_19
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "BindQuestionActivityLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "checkExist,exist="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_68

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->r:Landroid/content/res/Resources;

    const-string v1, "vivo_question_reedit_error"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_46
    return v2

    :cond_47
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    move v2, v0

    goto :goto_19

    :cond_68
    invoke-virtual {p2, v5, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_46
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->O:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->z:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v2

    goto :goto_9

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p1, :cond_37

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_37
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    move v2, v0

    goto :goto_15
.end method

.method private b(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->V:Landroid/content/Context;

    const-string v1, "string"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v1, "info"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "tk"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_27
    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BindQuestionActivityLog"

    const-string v5, "commitQuestionsContants.ACCOUNT_COMMIT_ANSWER_URL"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_COMMIT_ANSWER_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/an;

    const/4 v5, 0x0

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/activity/an;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v2

    :cond_41
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/MD5;->encode32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-----------pwd: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "   md5Pwd:  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v0, "pwd"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->L:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->G:Z

    return-void
.end method

.method private b()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->A:Z

    if-nez v2, :cond_d

    const-string v2, "BindQuestionActivityLog"

    const-string v3, "question1UnPassed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->B:Z

    if-nez v2, :cond_18

    const-string v2, "BindQuestionActivityLog"

    const-string v3, "question2UnPassed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->C:Z

    if-nez v2, :cond_23

    const-string v2, "BindQuestionActivityLog"

    const-string v3, "question3UnPassed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->D:Z

    if-nez v2, :cond_2e

    const-string v2, "BindQuestionActivityLog"

    const-string v3, "answer1UnPassed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->E:Z

    if-nez v2, :cond_39

    const-string v2, "BindQuestionActivityLog"

    const-string v3, "answer2UnPassed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->F:Z

    if-nez v2, :cond_44

    const-string v2, "BindQuestionActivityLog"

    const-string v3, "answer3UnPassed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->A:Z

    if-eqz v2, :cond_62

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->B:Z

    if-eqz v2, :cond_62

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->C:Z

    if-eqz v2, :cond_62

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->D:Z

    if-eqz v2, :cond_62

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->E:Z

    if-eqz v2, :cond_62

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->F:Z

    if-eqz v2, :cond_62

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->U:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_61
    return v0

    :cond_62
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->U:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    move v0, v1

    goto :goto_61
.end method

.method private c(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->V:Landroid/content/Context;

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->u:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .registers 9

    const/4 v7, 0x3

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->z:Ljava/util/HashMap;

    const-string v3, "key_questions1"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "BindQuestionActivityLog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "question1="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_64

    const-string v0, "BindQuestionActivityLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "question1_input_custom_layout.getVisibility()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_fd

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->j:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    if-eqz v0, :cond_fa

    const-string v0, "key_questions1"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->j:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_fa

    move v0, v1

    :goto_5a
    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->A:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->m:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->D:Z

    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->z:Ljava/util/HashMap;

    const-string v3, "key_questions2"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "BindQuestionActivityLog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "question2="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_10b

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->k:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    if-eqz v0, :cond_109

    const-string v0, "key_questions2"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->k:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_109

    move v0, v1

    :goto_9f
    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->B:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->n:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->E:Z

    :cond_a9
    :goto_a9
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->z:Ljava/util/HashMap;

    const-string v3, "key_questions3"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "BindQuestionActivityLog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "question3="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_118

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->l:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    if-eqz v0, :cond_116

    const-string v0, "key_questions3"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->l:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_116

    move v0, v1

    :goto_e4
    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->C:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->o:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->F:Z

    :cond_ee
    :goto_ee
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v0, v7, :cond_123

    invoke-direct {p0, v7}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(I)V

    :cond_f9
    :goto_f9
    return-void

    :cond_fa
    move v0, v2

    goto/16 :goto_5a

    :cond_fd
    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->A:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->m:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->D:Z

    goto/16 :goto_64

    :cond_109
    move v0, v2

    goto :goto_9f

    :cond_10b
    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->B:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->n:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->E:Z

    goto :goto_a9

    :cond_116
    move v0, v2

    goto :goto_e4

    :cond_118
    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->C:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->o:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->F:Z

    goto :goto_ee

    :cond_123
    const-string v0, "BindQuestionActivityLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "question1Passed="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->A:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", question2Passed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->B:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", question3Passed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->C:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->s:Landroid/os/HandlerThread;

    if-nez v0, :cond_176

    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "com.bbk.BIND_QUESTION"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->s:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->s:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/am;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->s:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/vivo/sdkplugin/activity/am;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->t:Lcom/vivo/sdkplugin/activity/am;

    :cond_176
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->u:Landroid/os/Handler;

    if-nez v0, :cond_181

    new-instance v0, Lcom/vivo/sdkplugin/activity/ap;

    invoke-direct {v0, p0, v2}, Lcom/vivo/sdkplugin/activity/ap;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->u:Landroid/os/Handler;

    :cond_181
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_18e

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(I)V

    goto/16 :goto_f9

    :cond_18e
    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->t:Lcom/vivo/sdkplugin/activity/am;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/am;->sendEmptyMessage(I)Z

    goto/16 :goto_f9
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;I)V
    .registers 2

    iput p1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->Q:I

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->M:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->D:Z

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method private d()V
    .registers 9

    const/4 v7, 0x1

    const-string v0, "BindQuestionActivityLog"

    const-string v1, "setQuestions()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuesTion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuestionNum(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1a

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->X:[Ljava/lang/String;

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-lt v0, v1, :cond_24

    iput-boolean v7, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->G:Z

    iput-boolean v7, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->H:Z

    iput-boolean v7, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->I:Z

    return-void

    :cond_24
    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuesTion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuestion(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->X:[Ljava/lang/String;

    aput-object v2, v3, v0

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAnswer(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BindQuestionActivityLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "i="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", question="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", answer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_8b

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->m:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->P:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->m:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iput-boolean v7, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->A:Z

    iput-boolean v7, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->D:Z

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->z:Ljava/util/HashMap;

    const-string v4, "key_questions1"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_8b
    if-ne v0, v7, :cond_ae

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->n:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->P:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->n:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iput-boolean v7, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->B:Z

    iput-boolean v7, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->E:Z

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->z:Ljava/util/HashMap;

    const-string v4, "key_questions2"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_88

    :cond_ae
    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->o:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->P:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->o:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iput-boolean v7, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->C:Z

    iput-boolean v7, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->F:Z

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->z:Ljava/util/HashMap;

    const-string v4, "key_questions3"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_88
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;I)V
    .registers 2

    iput p1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->R:I

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->N:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->H:Z

    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 11

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getUuid()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_162

    move v0, v1

    :goto_d
    const-string v6, ""

    if-ne v3, v6, :cond_12

    move v2, v1

    :cond_12
    or-int/2addr v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    or-int/2addr v0, v2

    if-eqz v0, :cond_1a8

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountId()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_21
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->w:Lorg/json/JSONArray;

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    :try_start_32
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->z:Ljava/util/HashMap;

    const-string v7, "key_questions1"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8c

    const-string v1, "vivo_custom_question"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_5c
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "num"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "question"

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "answer"

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->G:Z

    if-nez v0, :cond_165

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->w:Lorg/json/JSONArray;

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_8b
    move v1, v5

    :cond_8c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->z:Ljava/util/HashMap;

    const-string v5, "key_questions2"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e7

    const-string v5, "vivo_custom_question"

    invoke-direct {p0, v5}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_b6
    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "num"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "question"

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "answer"

    invoke-virtual {v7, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->H:Z

    if-nez v0, :cond_17f

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->w:Lorg/json/JSONArray;

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_e4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_e7
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->z:Ljava/util/HashMap;

    const-string v5, "key_questions3"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_13f

    const-string v5, "vivo_custom_question"

    invoke-direct {p0, v5}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_111

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_111
    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "num"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "question"

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "answer"

    invoke-virtual {v7, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->I:Z

    if-nez v0, :cond_194

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->w:Lorg/json/JSONArray;

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_13f
    :goto_13f
    const-string v0, "uuid"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "questions"

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_14c
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_14c} :catch_179

    move-result-object v0

    :goto_14d
    const-string v1, "BindQuestionActivityLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_162
    move v0, v2

    goto/16 :goto_d

    :cond_165
    :try_start_165
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->w:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v8}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuesTion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuestion(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_177
    .catch Lorg/json/JSONException; {:try_start_165 .. :try_end_177} :catch_179

    goto/16 :goto_8b

    :catch_179
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v4

    goto :goto_14d

    :cond_17f
    :try_start_17f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->w:Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v8}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuesTion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuestion(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_e4

    :cond_194
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->w:Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v7}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuesTion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuestion(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1a7
    .catch Lorg/json/JSONException; {:try_start_17f .. :try_end_1a7} :catch_179

    goto :goto_13f

    :cond_1a8
    move-object v2, v3

    goto/16 :goto_21
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->w:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->E:Z

    return-void
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->X:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_107

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_107

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_107

    move v3, v0

    :goto_24
    const-string v5, "BindQuestionActivityLog"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "quest0: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " quesInput0: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->X:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10a

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10a

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    move v2, v0

    :goto_64
    const-string v6, "BindQuestionActivityLog"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "quest1: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " quesInput1: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->X:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10d

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10d

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d

    :goto_a3
    const-string v1, "BindQuestionActivityLog"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "quest2: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " quesInput2: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BindQuestionActivityLog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "quest0Change: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " quest1Change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " quest2Change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hasAnswerChange():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_10f

    if-nez v2, :cond_10f

    if-nez v0, :cond_10f

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a()Z

    move-result v0

    if-nez v0, :cond_10f

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->finish()V

    :goto_106
    return-void

    :cond_107
    move v3, v1

    goto/16 :goto_24

    :cond_10a
    move v2, v1

    goto/16 :goto_64

    :cond_10d
    move v0, v1

    goto :goto_a3

    :cond_10f
    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c()V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_112} :catch_113

    goto :goto_106

    :catch_113
    move-exception v0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c()V

    goto :goto_106
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->I:Z

    return-void
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->F:Z

    return-void
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->G:Z

    return v0
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->A:Z

    return-void
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->B:Z

    return-void
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->C:Z

    return-void
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->J:Z

    return v0
.end method

.method static synthetic k(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->Q:I

    return v0
.end method

.method static synthetic k(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->S:Z

    return-void
.end method

.method static synthetic l(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->R:I

    return v0
.end method

.method static synthetic m(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->H:Z

    return v0
.end method

.method static synthetic n(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic o(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->I:Z

    return v0
.end method

.method static synthetic p(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->o:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic q(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->O:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic v(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->z:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic w(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->A:Z

    return v0
.end method

.method static synthetic y(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->j:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "key_questions1"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->j:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_59

    move v0, v1

    :goto_1d
    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->A:Z

    :cond_1f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->k:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "key_questions2"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->k:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_5b

    move v0, v1

    :goto_3a
    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->B:Z

    :cond_3c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->l:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Landroid/widget/EditText;I)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "key_questions3"

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->l:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_5d

    :goto_56
    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->C:Z

    :cond_58
    return-void

    :cond_59
    move v0, v2

    goto :goto_1d

    :cond_5b
    move v0, v2

    goto :goto_3a

    :cond_5d
    move v1, v2

    goto :goto_56
.end method

.method static synthetic z(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->k:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    packed-switch p1, :pswitch_data_c

    const-string v0, "BindQuestionActivityLog"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_a
    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x64
        :pswitch_a
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    const-string v0, "BindQuestionActivityLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sysQestionArray="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->v:Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->u:Landroid/os/Handler;

    if-nez v0, :cond_22

    new-instance v0, Lcom/vivo/sdkplugin/activity/ap;

    invoke-direct {v0, p0, v3}, Lcom/vivo/sdkplugin/activity/ap;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->u:Landroid/os/Handler;

    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "question1_layout"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_73

    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->x:I

    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->v:Lorg/json/JSONArray;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->v:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_9c

    :cond_3d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->s:Landroid/os/HandlerThread;

    if-nez v0, :cond_5c

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.GET_QUESTION"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->s:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->s:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/am;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->s:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/am;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->t:Lcom/vivo/sdkplugin/activity/am;

    :cond_5c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->u:Landroid/os/Handler;

    if-nez v0, :cond_67

    new-instance v0, Lcom/vivo/sdkplugin/activity/ap;

    invoke-direct {v0, p0, v3}, Lcom/vivo/sdkplugin/activity/ap;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->u:Landroid/os/Handler;

    :cond_67
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_93

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(I)V

    :goto_72
    return-void

    :cond_73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "question2_layout"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_83

    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->x:I

    goto :goto_31

    :cond_83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "question3_layout"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_31

    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->x:I

    goto :goto_31

    :cond_93
    invoke-direct {p0, v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->t:Lcom/vivo/sdkplugin/activity/am;

    invoke-virtual {v0, v3}, Lcom/vivo/sdkplugin/activity/am;->sendEmptyMessage(I)Z

    goto :goto_72

    :cond_9c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->u:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x24

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_72
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v0, "bind_question"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->V:Landroid/content/Context;

    const-string v2, "layout"

    invoke-static {v1, v2, v0}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->T:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->W:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->U:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->U:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v0, "question1_layout"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a:Landroid/widget/LinearLayout;

    const-string v0, "question2_layout"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b:Landroid/widget/LinearLayout;

    const-string v0, "question3_layout"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c:Landroid/widget/LinearLayout;

    const-string v0, "question1_input_custom_layout"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->d:Landroid/widget/LinearLayout;

    const-string v0, "question2_input_custom_layout"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->e:Landroid/widget/LinearLayout;

    const-string v0, "question3_input_custom_layout"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->f:Landroid/widget/LinearLayout;

    const-string v0, "question1_input"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->g:Landroid/widget/TextView;

    const-string v0, "question2_input"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->h:Landroid/widget/TextView;

    const-string v0, "question3_input"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->i:Landroid/widget/TextView;

    const-string v0, "question1_input_custom"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->j:Landroid/widget/EditText;

    const-string v0, "question2_input_custom"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->k:Landroid/widget/EditText;

    const-string v0, "question3_input_custom"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->l:Landroid/widget/EditText;

    const-string v0, "answer1_input"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->m:Landroid/widget/EditText;

    const-string v0, "answer2_input"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->n:Landroid/widget/EditText;

    const-string v0, "answer3_input"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->o:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->r:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->r:Landroid/content/res/Resources;

    const-string v1, "indicator_input_error"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->p:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->p:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->r:Landroid/content/res/Resources;

    const-string v1, "indicator_input_pass"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->q:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->W:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/T;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/T;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->T:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ae;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ae;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->U:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/af;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/af;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->m:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ag;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ag;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->n:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ah;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ah;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->o:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ai;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ai;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/aj;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/aj;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ak;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ak;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/al;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/al;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/U;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/U;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/V;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/V;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/W;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/W;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->K:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->z:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "vivo_custom_question"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->O:Ljava/lang/String;

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->d()V

    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8

    const/4 v4, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "BindQuestionActivityLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreateDialog, id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_12e

    const-string v0, "BindQuestionActivityLog"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_28
    return-object v0

    :sswitch_29
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_loading_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_28

    :sswitch_42
    const-string v0, "vivo_cue"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const-string v0, "vivo_msg_edit_all_question"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const-string v0, "vivo_ok_label"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lcom/vivo/sdkplugin/activity/X;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/activity/X;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/vivo/sdkplugin/activity/Y;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/Y;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_24

    :sswitch_72
    const-string v0, "vivo_question_repeat_error"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const-string v0, "vivo_question_repeat_intr"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const-string v0, "vivo_question_reselect"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lcom/vivo/sdkplugin/activity/Z;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/activity/Z;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "vivo_cancle"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lcom/vivo/sdkplugin/activity/aa;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/activity/aa;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/vivo/sdkplugin/activity/ab;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/ab;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_24

    :sswitch_b1
    const-string v0, "vivo_question_title"

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/vivo/sdkplugin/activity/ac;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/ac;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->y:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_ca
    :try_start_ca
    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->v:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_102

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->y:Ljava/util/ArrayList;

    const-string v2, "vivo_custom_question"

    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e1
    .catch Lorg/json/JSONException; {:try_start_ca .. :try_end_e1} :catch_11d

    :goto_e1
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->y:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v2, Lcom/vivo/sdkplugin/activity/ad;

    invoke-direct {v2, p0, v0}, Lcom/vivo/sdkplugin/activity/ad;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;[Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_24

    :cond_102
    :try_start_102
    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->v:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "question"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11a

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11a
    .catch Lorg/json/JSONException; {:try_start_102 .. :try_end_11a} :catch_11d

    :cond_11a
    add-int/lit8 v0, v0, 0x1

    goto :goto_ca

    :catch_11d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_e1

    :sswitch_122
    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-direct {v0, p0, p0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    goto/16 :goto_24

    :sswitch_data_12e
    .sparse-switch
        0x0 -> :sswitch_29
        0x1 -> :sswitch_b1
        0x2 -> :sswitch_72
        0x3 -> :sswitch_42
        0x64 -> :sswitch_122
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onDestroy()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->s:Landroid/os/HandlerThread;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->s:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->s:Landroid/os/HandlerThread;

    :cond_f
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x4

    if-ne p2, v0, :cond_22

    const-string v0, "BindQuestionActivityLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKey,keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->s:Landroid/os/HandlerThread;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->s:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onResume()V

    return-void
.end method
