.class public Lcom/baidu/wallet/core/permission/PermissionManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/NoProguard;


# static fields
.field public static final REQUEST_CODE_CALL_PHONE:I = 0x2

.field public static final REQUEST_CODE_READ_CONTRACT:I = 0x3

.field public static final REQUEST_CODE_READ_SMS:I = 0x1

.field public static final REQUEST_CODE_WRITE_EXTERNAL_STORAGE:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCallingOrSelfPermission(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_4

    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static checkCallingPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
