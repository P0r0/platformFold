.class public Lcom/baidu/android/pushservice/message/a/f;
.super Lcom/baidu/android/pushservice/message/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/message/a/f$1;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/android/pushservice/message/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/message/a/f;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/message/a/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B[B)Lcom/baidu/android/pushservice/message/PublicMsg;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p4}, Lcom/baidu/android/pushservice/util/q;->a([B[B)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/j/e;->a([BZ)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MIIBUwIBADANBgkqhkiG9w0BAQEFAASCAT0wggE5AgEAAkEAw8a6IWcegMVqTifD\rWKkKvoSIIDaBIEm1QpJ8vjUajP6HihfYWzq429zRc0+WjBnDU2nUAUobBGBUu4u+\ri3peeQIDAQABAkBYi6QZgXMpWKBo8tEGY4YpfvW2ZBBo0w15K5nhyVDV3Wo2tFDp\rJaBx7HY1WihCd6STczrO6yTGF2WXYA8rkUEBAiEA6IPQzZc7KgnIUSF2Asf7PCSf\rJqblINFEY9qpSzMWdmECIQDXjPQSnvoPUjTESsPBcuIoQZQDapjnXGq8dKt/z60v\rGQIgeNbo0bBjIznqTZ/iQRfFzkAKJoBeXGvl6y9dBKQMbIECIDJUAPEQGYbWROfI\rJSjX8CJCHZMmoojytSFHhHuVO/SRAiASwQ74b9JvnomuFX4cq4yCoWiBWVoxMyCd\rNAD4k4FVMw==\r"

    invoke-static {p3, v2}, Lcom/baidu/android/pushservice/j/f;->a([BLjava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    if-eqz v3, :cond_25

    if-eqz v1, :cond_25

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_26

    move-result v1

    if-nez v1, :cond_40

    :cond_25
    :goto_25
    return-object v0

    :catch_26
    move-exception v1

    sget-object v2, Lcom/baidu/android/pushservice/message/a/f;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_40
    invoke-static {p0, p2, p1, p4}, Lcom/baidu/android/pushservice/message/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Lcom/baidu/android/pushservice/message/PublicMsg;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgName:Ljava/lang/String;

    iget-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    goto :goto_25
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I[B[B)I
    .registers 15

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/a/f;->a:Landroid/content/Context;

    invoke-static {v0, p2, p1, p5}, Lcom/baidu/android/pushservice/message/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Lcom/baidu/android/pushservice/message/PublicMsg;

    move-result-object v1

    if-eqz v1, :cond_f5

    iget-object v0, v1, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f5

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/a/f;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/android/pushservice/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/c/d;

    move-result-object v8

    sget-object v0, Lcom/baidu/android/pushservice/message/a/f$1;->a:[I

    invoke-virtual {v8}, Lcom/baidu/android/pushservice/c/d;->a()Lcom/baidu/android/pushservice/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/c/c;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_106

    sget-object v0, Lcom/baidu/android/pushservice/message/a/f;->b:Ljava/lang/String;

    const-string v1, ">>> Don\'t Show pMsg private Notification! package name is null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/a/f;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/android/pushservice/message/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, ">>> Don\'t Show pMsg private Notification! package name is null"

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/f;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x7

    :goto_3a
    return v0

    :pswitch_3b
    iget-object v0, v8, Lcom/baidu/android/pushservice/c/d;->a:Lcom/baidu/android/pushservice/c/h;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgName:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/a/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_49
    iget-object v2, v1, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgName:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, v1, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    :cond_63
    iget-object v0, p0, Lcom/baidu/android/pushservice/message/a/f;->a:Landroid/content/Context;

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/baidu/android/pushservice/message/a/g;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;Ljava/lang/String;I[B[B)V

    sget-object v0, Lcom/baidu/android/pushservice/message/a/f;->b:Ljava/lang/String;

    const-string v1, ">>> Show pMsg private Notification!"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ">>> Show pMsg private Notification!"

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/f;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_7b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_7b} :catch_7d

    move v0, v7

    goto :goto_3a

    :catch_7d
    move-exception v0

    sget-object v1, Lcom/baidu/android/pushservice/message/a/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/baidu/android/pushservice/c/d;->a()Lcom/baidu/android/pushservice/c/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/android/pushservice/c/c;->a:Lcom/baidu/android/pushservice/c/c;

    if-ne v0, v1, :cond_aa

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/a/f;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/android/pushservice/message/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a7
    :goto_a7
    const/16 v0, 0x8

    goto :goto_3a

    :cond_aa
    invoke-virtual {v8}, Lcom/baidu/android/pushservice/c/d;->a()Lcom/baidu/android/pushservice/c/c;

    move-result-object v0

    sget-object v1, Lcom/baidu/android/pushservice/c/c;->b:Lcom/baidu/android/pushservice/c/c;

    if-ne v0, v1, :cond_a7

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/a/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c/j;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/j;

    move-result-object v0

    iget-object v1, v8, Lcom/baidu/android/pushservice/c/d;->b:Lcom/baidu/android/pushservice/c/i;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/android/pushservice/c/j;->a(Lcom/baidu/android/pushservice/c/a;Z)Ljava/lang/String;

    goto :goto_a7

    :pswitch_bf
    iget-object v0, v1, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c9

    iput-object p1, v1, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    :cond_c9
    iget-object v0, p0, Lcom/baidu/android/pushservice/message/a/f;->a:Landroid/content/Context;

    invoke-static {v0, v1, p2, p1}, Lcom/baidu/android/pushservice/message/a/g;->b(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/message/a/f;->b:Ljava/lang/String;

    const-string v1, ">>> Show pMsg private web Notification!"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ">>> Show pMsg private Notification!"

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/f;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    move v0, v7

    goto/16 :goto_3a

    :pswitch_df
    iget-object v0, p0, Lcom/baidu/android/pushservice/message/a/f;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2, p5, v1}, Lcom/baidu/android/pushservice/message/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLcom/baidu/android/pushservice/message/PublicMsg;)I

    move-result v0

    sget-object v1, Lcom/baidu/android/pushservice/message/a/f;->b:Ljava/lang/String;

    const-string v2, ">>> Handle light app notification!"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ">>> Handle light app notification!"

    iget-object v2, p0, Lcom/baidu/android/pushservice/message/a/f;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_3a

    :cond_f5
    sget-object v0, Lcom/baidu/android/pushservice/message/a/f;->b:Ljava/lang/String;

    const-string v1, ">>> pMsg JSON parsing error!"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ">>> pMsg JSON parsing error!"

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/f;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x2

    goto/16 :goto_3a

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3b
        :pswitch_bf
        :pswitch_df
    .end packed-switch
.end method
