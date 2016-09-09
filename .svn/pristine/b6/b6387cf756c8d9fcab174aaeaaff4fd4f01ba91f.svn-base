.class public Lcom/baidu/android/pushservice/message/a/i;
.super Lcom/baidu/android/pushservice/message/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/message/a/i$1;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/android/pushservice/message/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/message/a/i;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/message/a/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[B[B)[Ljava/lang/String;
    .registers 13

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    :try_start_6
    const-string v2, "MIIBUwIBADANBgkqhkiG9w0BAQEFAASCAT0wggE5AgEAAkEAw8a6IWcegMVqTifD\rWKkKvoSIIDaBIEm1QpJ8vjUajP6HihfYWzq429zRc0+WjBnDU2nUAUobBGBUu4u+\ri3peeQIDAQABAkBYi6QZgXMpWKBo8tEGY4YpfvW2ZBBo0w15K5nhyVDV3Wo2tFDp\rJaBx7HY1WihCd6STczrO6yTGF2WXYA8rkUEBAiEA6IPQzZc7KgnIUSF2Asf7PCSf\rJqblINFEY9qpSzMWdmECIQDXjPQSnvoPUjTESsPBcuIoQZQDapjnXGq8dKt/z60v\rGQIgeNbo0bBjIznqTZ/iQRfFzkAKJoBeXGvl6y9dBKQMbIECIDJUAPEQGYbWROfI\rJSjX8CJCHZMmoojytSFHhHuVO/SRAiASwQ74b9JvnomuFX4cq4yCoWiBWVoxMyCd\rNAD4k4FVMw==\r"

    invoke-static {p4, v2}, Lcom/baidu/android/pushservice/j/f;->a([BLjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, p5}, Lcom/baidu/android/pushservice/util/q;->a([B[B)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/j/e;->a([BZ)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    if-eqz v4, :cond_28

    if-eqz v3, :cond_28

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_25} :catch_2a

    move-result v2

    if-nez v2, :cond_36

    :cond_28
    move-object v0, v1

    :cond_29
    :goto_29
    return-object v0

    :catch_2a
    move-exception v0

    sget-object v2, Lcom/baidu/android/pushservice/message/a/i;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_29

    :cond_36
    sget-object v2, Lcom/baidu/android/pushservice/message/a/m;->b:Lcom/baidu/android/pushservice/message/a/m;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/message/a/m;->a()I

    move-result v2

    if-eq p1, v2, :cond_46

    sget-object v2, Lcom/baidu/android/pushservice/message/a/m;->c:Lcom/baidu/android/pushservice/message/a/m;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/message/a/m;->a()I

    move-result v2

    if-ne p1, v2, :cond_50

    :cond_46
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p5}, Ljava/lang/String;-><init>([B)V

    aput-object v2, v0, v5

    aput-object v1, v0, v6

    goto :goto_29

    :cond_50
    sget-object v1, Lcom/baidu/android/pushservice/message/a/m;->g:Lcom/baidu/android/pushservice/message/a/m;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/message/a/m;->a()I

    move-result v1

    if-ne p1, v1, :cond_29

    invoke-static {p0, p3, p2, p5}, Lcom/baidu/android/pushservice/message/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Lcom/baidu/android/pushservice/message/PublicMsg;

    move-result-object v1

    iget-object v2, v1, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    aput-object v2, v0, v5

    iget-object v1, v1, Lcom/baidu/android/pushservice/message/PublicMsg;->mCustomContent:Ljava/lang/String;

    aput-object v1, v0, v6

    goto :goto_29
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I[B[B)I
    .registers 16

    const/16 v2, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/baidu/android/pushservice/message/a/i;->a:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/baidu/android/pushservice/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/c/d;

    move-result-object v4

    sget-object v3, Lcom/baidu/android/pushservice/message/a/i$1;->a:[I

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/c/d;->a()Lcom/baidu/android/pushservice/c/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/c/c;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_286

    const/4 v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> NOT found client for privateMessageHandler appid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/message/a/i;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/baidu/android/pushservice/message/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/message/a/i;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgbody "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/android/pushservice/message/a/i;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_58
    :goto_58
    return v0

    :pswitch_59
    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_5f
    iget-object v3, v4, Lcom/baidu/android/pushservice/c/d;->a:Lcom/baidu/android/pushservice/c/h;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x80

    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/i;->a:Landroid/content/Context;

    invoke-static {v1, p2, p1, p5}, Lcom/baidu/android/pushservice/message/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Lcom/baidu/android/pushservice/message/PublicMsg;

    move-result-object v5

    invoke-virtual {p0, p5}, Lcom/baidu/android/pushservice/message/a/i;->a([B)Z

    move-result v1

    if-eqz v5, :cond_58

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v3, ""

    if-eqz v1, :cond_124

    const-string v0, "com.baidu.android.pushservice.action.FB_MESSAGE"

    const/4 v1, 0x5

    move-object v3, v0

    :goto_83
    const-string v0, "message_string"

    iget-object v7, v5, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "message_id"

    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "baidu_message_type"

    invoke-virtual {v6, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "baidu_message_body"

    invoke-virtual {v6, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "app_id"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "baidu_message_secur_info"

    invoke-virtual {v6, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v0, v5, Lcom/baidu/android/pushservice/message/PublicMsg;->mCustomContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_a8} :catch_137

    move-result v0

    if-nez v0, :cond_e7

    :try_start_ab
    new-instance v7, Lorg/json/JSONObject;

    iget-object v0, v5, Lcom/baidu/android/pushservice/message/PublicMsg;->mCustomContent:Ljava/lang/String;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :goto_b6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_c9
    .catch Lorg/json/JSONException; {:try_start_ab .. :try_end_c9} :catch_ca
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ab .. :try_end_c9} :catch_137

    goto :goto_b6

    :catch_ca
    move-exception v0

    :try_start_cb
    sget-object v7, Lcom/baidu/android/pushservice/message/a/i;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Custom content to JSONObject exception::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e7
    :goto_e7
    iget-object v0, p0, Lcom/baidu/android/pushservice/message/a/i;->a:Landroid/content/Context;

    iget-object v7, v4, Lcom/baidu/android/pushservice/c/d;->a:Lcom/baidu/android/pushservice/c/h;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v3, v7}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> Deliver message to client: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v4, Lcom/baidu/android/pushservice/c/d;->a:Lcom/baidu/android/pushservice/c/h;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " msg: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v5, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/baidu/android/pushservice/message/a/i;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/android/pushservice/message/a/i;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    move v0, v1

    goto/16 :goto_58

    :cond_124
    const-string v1, "com.baidu.android.pushservice.action.MESSAGE"

    const-string v3, "msg_id"

    invoke-virtual {v6, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_12b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cb .. :try_end_12b} :catch_137

    move-object v3, v1

    move v1, v0

    goto/16 :goto_83

    :cond_12f
    :try_start_12f
    const-string v0, "extra_extra_custom_content"

    iget-object v7, v5, Lcom/baidu/android/pushservice/message/PublicMsg;->mCustomContent:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_136
    .catch Lorg/json/JSONException; {:try_start_12f .. :try_end_136} :catch_ca
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12f .. :try_end_136} :catch_137

    goto :goto_e7

    :catch_137
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> NOT deliver to app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v4, Lcom/baidu/android/pushservice/c/d;->a:Lcom/baidu/android/pushservice/c/h;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package has been uninstalled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/i;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/baidu/android/pushservice/message/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/message/a/i;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/i;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    move v0, v2

    goto/16 :goto_58

    :pswitch_169
    sget-object v3, Lcom/baidu/android/pushservice/message/a/i;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive sdk message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/baidu/android/pushservice/c/d;->b:Lcom/baidu/android/pushservice/c/i;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/c/i;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ""

    :try_start_198
    new-instance v3, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1ab
    .catch Lorg/json/JSONException; {:try_start_198 .. :try_end_1ab} :catch_236

    move-result v5

    if-nez v5, :cond_233

    :try_start_1ae
    iget-object v5, p0, Lcom/baidu/android/pushservice/message/a/i;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v4, Lcom/baidu/android/pushservice/c/d;->b:Lcom/baidu/android/pushservice/c/i;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/c/i;->c()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, v4, Lcom/baidu/android/pushservice/c/d;->b:Lcom/baidu/android/pushservice/c/i;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/c/i;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "message"

    invoke-virtual {v5, v6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v6, "message_string"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x20

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "baidu_message_body"

    invoke-virtual {v5, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v3, "baidu_message_secur_info"

    invoke-virtual {v5, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v3, "message_id"

    invoke-virtual {v5, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "baidu_message_type"

    invoke-virtual {v5, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/baidu/android/pushservice/message/a/i;->a:Landroid/content/Context;

    const-string v6, "com.baidu.android.pushservice.action.SDK_MESSAGE"

    iget-object v7, v4, Lcom/baidu/android/pushservice/c/d;->b:Lcom/baidu/android/pushservice/c/i;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/c/i;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v5, v6, v7}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1fd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1ae .. :try_end_1fd} :catch_1ff
    .catch Lorg/json/JSONException; {:try_start_1ae .. :try_end_1fd} :catch_236

    goto/16 :goto_58

    :catch_1ff
    move-exception v0

    :try_start_200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> NOT deliver to app: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v4, Lcom/baidu/android/pushservice/c/d;->b:Lcom/baidu/android/pushservice/c/i;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/c/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", package has been uninstalled."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/android/pushservice/message/a/i;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/c/j;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/j;

    move-result-object v3

    iget-object v4, v4, Lcom/baidu/android/pushservice/c/d;->b:Lcom/baidu/android/pushservice/c/i;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/baidu/android/pushservice/c/j;->a(Lcom/baidu/android/pushservice/c/a;Z)Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/message/a/i;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_230
    .catch Lorg/json/JSONException; {:try_start_200 .. :try_end_230} :catch_236

    move v0, v2

    goto/16 :goto_58

    :cond_233
    move v0, v1

    goto/16 :goto_58

    :catch_236
    move-exception v0

    sget-object v0, Lcom/baidu/android/pushservice/message/a/i;->b:Ljava/lang/String;

    const-string v2, "description is null return invalid"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_58

    :pswitch_241
    const-string v2, ""

    :try_start_243
    new-instance v3, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_283

    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_25a
    .catch Lorg/json/JSONException; {:try_start_243 .. :try_end_25a} :catch_27f

    move-result-object v1

    :goto_25b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_58

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "message"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v3, "message_string"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/i;->a:Landroid/content/Context;

    const-string v3, "com.baidu.android.pushservice.action.LAPP_MESSAGE"

    iget-object v4, v4, Lcom/baidu/android/pushservice/c/d;->c:Lcom/baidu/android/pushservice/c/f;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/c/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_58

    :catch_27f
    move-exception v0

    move v0, v1

    move-object v1, v2

    goto :goto_25b

    :cond_283
    move-object v1, v2

    goto :goto_25b

    nop

    :pswitch_data_286
    .packed-switch 0x1
        :pswitch_59
        :pswitch_169
        :pswitch_241
    .end packed-switch
.end method
