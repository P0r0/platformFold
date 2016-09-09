.class public final Lcom/unionpay/uppay/PayActivity;
.super Lcom/unionpay/mobile/android/plugin/BaseActivity;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

.field private d:Lcom/unionpay/mobile/android/hce/f;

.field private e:Lcom/unionpay/mobile/android/utils/n;

.field private f:Lcom/unionpay/mobile/android/pro/views/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "entryexpro"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, ""

    sput-object v0, Lcom/unionpay/uppay/PayActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;-><init>()V

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivity;->c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivity;->d:Lcom/unionpay/mobile/android/hce/f;

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/pro/views/k;

    return-void
.end method


# virtual methods
.method public final a(ILcom/unionpay/mobile/android/model/e;)Lcom/unionpay/mobile/android/nocard/views/b;
    .registers 6

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_5a

    :goto_4
    return-object v1

    :sswitch_5
    new-instance v1, Lcom/unionpay/mobile/android/pro/views/j;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/pro/views/j;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Lcom/unionpay/mobile/android/nocard/views/l;

    invoke-virtual {p0}, Lcom/unionpay/uppay/PayActivity;->a()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Z)V

    goto :goto_4

    :sswitch_15
    new-instance v1, Lcom/unionpay/mobile/android/pro/views/u;

    invoke-direct {v1, p0, p2}, Lcom/unionpay/mobile/android/pro/views/u;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    goto :goto_4

    :sswitch_1b
    new-instance v1, Lcom/unionpay/mobile/android/pro/views/w;

    invoke-direct {v1, p0, p2}, Lcom/unionpay/mobile/android/pro/views/w;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    goto :goto_4

    :sswitch_21
    const-class v0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unionpay/uppay/PayActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    new-instance v1, Lcom/unionpay/mobile/android/pro/views/k;

    invoke-direct {v1, p0, p2, v0}, Lcom/unionpay/mobile/android/pro/views/k;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;)V

    iput-object v1, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/pro/views/k;

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-virtual {p0}, Lcom/unionpay/uppay/PayActivity;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/unionpay/mobile/android/pro/views/k;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/pro/views/k;

    iget-object v2, p0, Lcom/unionpay/uppay/PayActivity;->b:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/pro/views/k;->b(Z)V

    goto :goto_4

    :sswitch_48
    const-class v0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unionpay/uppay/PayActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    new-instance v1, Lcom/unionpay/mobile/android/pro/views/a;

    invoke-direct {v1, p0, p2, v0}, Lcom/unionpay/mobile/android/pro/views/a;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;)V

    goto :goto_4

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_15
        0x6 -> :sswitch_1b
        0x11 -> :sswitch_21
        0x12 -> :sswitch_48
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const-class v0, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-virtual {p0}, Lcom/unionpay/uppay/PayActivity;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivity;->c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    :cond_1b
    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    :goto_1d
    return-object v0

    :cond_1e
    const-class v0, Lcom/unionpay/mobile/android/hce/f;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->d:Lcom/unionpay/mobile/android/hce/f;

    if-nez v0, :cond_35

    new-instance v0, Lcom/unionpay/mobile/android/hce/f;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/hce/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivity;->d:Lcom/unionpay/mobile/android/hce/f;

    :cond_35
    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->d:Lcom/unionpay/mobile/android/hce/f;

    goto :goto_1d

    :cond_38
    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1d
.end method

.method public final a()Z
    .registers 4

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const-string v0, "nfc"

    invoke-virtual {p0, v0}, Lcom/unionpay/uppay/PayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_8

    :cond_19
    move v0, v1

    goto :goto_8
.end method

.method public final e()Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;
    .registers 2

    new-instance v0, Lcom/unionpay/mobile/android/utils/n;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/utils/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivity;->e:Lcom/unionpay/mobile/android/utils/n;

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->e:Lcom/unionpay/mobile/android/utils/n;

    return-object v0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/pro/views/k;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/views/k;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/pro/views/k;

    iget-object v1, p0, Lcom/unionpay/uppay/PayActivity;->b:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/pro/views/k;->b(Z)V

    :cond_1a
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected final onDestroy()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a()V

    iput-object v1, p0, Lcom/unionpay/uppay/PayActivity;->c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    :cond_f
    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->e:Lcom/unionpay/mobile/android/utils/n;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/utils/n;->g()V

    iput-object v1, p0, Lcom/unionpay/uppay/PayActivity;->e:Lcom/unionpay/mobile/android/utils/n;

    iput-object v1, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/pro/views/k;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/uppay/PayActivity;->a:Ljava/lang/String;

    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_44

    const-string v1, "NFCTAG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;

    check-cast v0, Landroid/nfc/Tag;

    invoke-static {v0}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;-><init>(Landroid/nfc/tech/IsoDep;)V

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;->a()V

    const-class v0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unionpay/uppay/PayActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/fully/a;

    new-instance v2, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;

    invoke-direct {v2, v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;-><init>(Lcom/unionpay/mobile/android/fully/a;Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;)V

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/pro/views/k;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/views/k;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/pro/views/k;->a(Lcom/unionpay/mobile/android/pboctransaction/nfc/a;)V

    :cond_44
    return-void
.end method

.method protected final onResume()V
    .registers 3

    invoke-super {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/pro/views/k;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/views/k;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/pro/views/k;

    iget-object v1, p0, Lcom/unionpay/uppay/PayActivity;->b:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/pro/views/k;->b(Z)V

    :cond_1a
    return-void
.end method
