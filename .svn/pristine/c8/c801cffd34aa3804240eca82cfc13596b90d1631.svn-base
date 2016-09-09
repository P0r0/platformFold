.class final Lcom/vivo/sdkplugin/accounts/i;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/accounts/i;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/accounts/i;-><init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 10

    const/4 v4, 0x1

    const/4 v0, 0x0

    const-string v1, "VivoAccountManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---UIHandler---: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_14c

    :cond_1b
    :goto_1b
    :pswitch_1b
    return-void

    :pswitch_1c
    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/i;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    iget v0, v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->status:I

    if-ne v0, v4, :cond_1b

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a(I)V

    goto :goto_1b

    :pswitch_28
    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/i;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v1

    if-eqz v1, :cond_a8

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/i;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGamePersonNotify(Z)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/vivo/assist/widget/AssistView;->personalShowNotification:Ljava/lang/Boolean;

    :goto_43
    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/assist/AssistWindowManager;->getInstance(Landroid/content/Context;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a(Lcom/vivo/assist/AssistWindowManager;)V

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b()Lcom/vivo/assist/AssistWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/assist/AssistWindowManager;->getPanel()Lcom/vivo/assist/panel/Panel;

    move-result-object v2

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/vivo/assist/panel/Panel;->updateTargetPackageName(Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b:[I

    if-eqz v1, :cond_1b

    sget-object v3, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b:[I

    array-length v4, v3

    move v1, v0

    :goto_69
    if-lt v0, v4, :cond_b8

    const-string v0, "VivoAccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bbkAccountManager.getCoordinatex()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/i;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v2}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getCoordinatex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b()Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/i;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getCoordinatex()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/i;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v2}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getCoordinatey()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->showAssistButton(II)V

    goto/16 :goto_1b

    :cond_a8
    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/i;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGamePersonNotify(Z)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/vivo/assist/widget/AssistView;->personalShowNotification:Ljava/lang/Boolean;

    goto :goto_43

    :cond_b8
    aget v5, v3, v0

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->c:[I

    aget v7, v7, v1

    invoke-interface {v2, v6, v5, v7}, Lcom/vivo/assist/panel/Panel;->addFunction(Landroid/content/Context;II)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    :pswitch_ca
    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/i;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v1

    if-eqz v1, :cond_12a

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/i;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGamePersonNotify(Z)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/vivo/assist/widget/AssistView;->personalShowNotification:Ljava/lang/Boolean;

    :goto_e5
    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/assist/AssistWindowManager;->getInstance(Landroid/content/Context;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a(Lcom/vivo/assist/AssistWindowManager;)V

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b()Lcom/vivo/assist/AssistWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/assist/AssistWindowManager;->getPanel()Lcom/vivo/assist/panel/Panel;

    move-result-object v2

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/vivo/assist/panel/Panel;->updateTargetPackageName(Ljava/lang/String;)V

    sget-object v3, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b:[I

    array-length v4, v3

    move v1, v0

    :goto_107
    if-lt v0, v4, :cond_13a

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b()Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/i;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getCoordinatex()I

    move-result v1

    add-int/lit8 v1, v1, -0x32

    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/i;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v2}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getCoordinatey()I

    move-result v2

    add-int/lit8 v2, v2, -0x32

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->showAssistButton(II)V

    goto/16 :goto_1b

    :cond_12a
    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/i;->a:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-static {v1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGamePersonNotify(Z)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/vivo/assist/widget/AssistView;->personalShowNotification:Ljava/lang/Boolean;

    goto :goto_e5

    :cond_13a
    aget v5, v3, v0

    invoke-static {}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->a()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->c:[I

    aget v7, v7, v1

    invoke-interface {v2, v6, v5, v7}, Lcom/vivo/assist/panel/Panel;->addFunction(Landroid/content/Context;II)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_107

    :pswitch_data_14c
    .packed-switch 0xb
        :pswitch_1c
        :pswitch_1b
        :pswitch_28
        :pswitch_ca
    .end packed-switch
.end method
