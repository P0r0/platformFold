.class final Lcom/vivo/sdkplugin/accounts/d;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/accounts/d;->a:Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/accounts/d;-><init>(Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "ManageAccountReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msg.obj="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_66

    const-string v0, "ManageAccountReceiver"

    const-string v1, "UnSupport UIHandler msg"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    :pswitch_25
    return-void

    :pswitch_26
    new-instance v0, Lcom/vivo/sdkplugin/data/AccountEventInfoDbHelper;

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/d;->a:Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;

    invoke-static {v1}, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->c(Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/data/AccountEventInfoDbHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/data/AccountEventInfoDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sdkeventinfo"

    invoke-virtual {v0, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/d;->a:Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;

    const-string v1, ""

    iput-object v1, v0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringEventSDK:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/d;->a:Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;

    const-string v1, ""

    iput-object v1, v0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringItem:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/d;->a:Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;

    const-string v1, "["

    iput-object v1, v0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringTotal:Ljava/lang/String;

    const-string v0, "ManageAccountReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mStringEventSDK"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/d;->a:Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;

    iget-object v2, v2, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringEventSDK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    nop

    :pswitch_data_66
    .packed-switch 0x22
        :pswitch_26
        :pswitch_25
    .end packed-switch
.end method
