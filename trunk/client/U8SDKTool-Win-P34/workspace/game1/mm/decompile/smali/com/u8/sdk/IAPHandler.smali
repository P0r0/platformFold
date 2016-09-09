.class public Lcom/u8/sdk/IAPHandler;
.super Landroid/os/Handler;
.source "IAPHandler.java"


# static fields
.field public static final BILL_FINISH:I = 0x2711

.field public static final INIT_FINISH:I = 0x2710

.field public static final QUERY_FINISH:I = 0x2712

.field public static final UNSUB_FINISH:I = 0x2713


# instance fields
.field private context:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/u8/sdk/IAPHandler;->context:Landroid/app/Activity;

    .line 21
    return-void
.end method

.method private initShow(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/u8/sdk/IAPHandler;->context:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u521d\u59cb\u5316\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 26
    iget v0, p1, Landroid/os/Message;->what:I

    .line 27
    .local v0, "what":I
    packed-switch v0, :pswitch_data_12

    .line 34
    :goto_8
    return-void

    .line 29
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/u8/sdk/IAPHandler;->initShow(Ljava/lang/String;)V

    goto :goto_8

    .line 27
    nop

    :pswitch_data_12
    .packed-switch 0x2710
        :pswitch_9
    .end packed-switch
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/u8/sdk/IAPHandler;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 43
    if-nez p2, :cond_e

    const-string p2, "Undefined error"

    .end local p2    # "msg":Ljava/lang/String;
    :cond_e
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 44
    const-string v1, "OK"

    new-instance v2, Lcom/u8/sdk/IAPHandler$1;

    invoke-direct {v2, p0}, Lcom/u8/sdk/IAPHandler$1;-><init>(Lcom/u8/sdk/IAPHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 50
    return-void
.end method
