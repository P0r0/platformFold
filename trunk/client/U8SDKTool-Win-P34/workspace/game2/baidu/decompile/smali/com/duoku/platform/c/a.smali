.class public final Lcom/duoku/platform/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcom/duoku/platform/util/k;


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Landroid/content/Context;

.field private c:Lcom/duoku/platform/j/e;

.field private d:Lcom/duoku/platform/ui/DKContainerActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/duoku/platform/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/c/a;->e:Lcom/duoku/platform/util/k;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/duoku/platform/j/e;

    invoke-direct {v0}, Lcom/duoku/platform/j/e;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/j/e;

    .line 42
    return-void
.end method


# virtual methods
.method public a()Lcom/duoku/platform/ui/DKContainerActivity;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/duoku/platform/c/a;->d:Lcom/duoku/platform/ui/DKContainerActivity;

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 8

    .prologue
    .line 60
    invoke-static {p3}, Lcom/duoku/platform/a;->a(Lcom/duoku/platform/IDKSDKCallBack;)J

    move-result-wide v0

    .line 61
    const-string v2, "sdk_callback_id"

    invoke-virtual {p2, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 62
    iput-object p2, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    .line 63
    iput-object p1, p0, Lcom/duoku/platform/c/a;->b:Landroid/content/Context;

    .line 64
    invoke-static {p3}, Lcom/duoku/platform/DKProCallbackListener;->setOnLoginProcessListener(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 65
    const-string v0, "function_code"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 67
    sget-object v1, Lcom/duoku/platform/c/a;->e:Lcom/duoku/platform/util/k;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "function code is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 69
    const/16 v1, 0x3e8

    if-ge v1, v0, :cond_3b

    const/16 v1, 0x44c

    if-ge v0, v1, :cond_3b

    .line 72
    invoke-static {p3}, Lcom/duoku/platform/DKProCallbackListener;->setmOnsessionFailedListener(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 73
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/j/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/j/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    .line 75
    :cond_3b
    const/16 v1, 0xbb8

    if-ge v1, v0, :cond_49

    const/16 v1, 0xc1c

    if-ge v0, v1, :cond_49

    .line 78
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/j/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/j/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    .line 108
    :cond_48
    :goto_48
    return-void

    .line 80
    :cond_49
    const/16 v1, 0xfa0

    if-ge v1, v0, :cond_57

    const/16 v1, 0x1004

    if-ge v0, v1, :cond_57

    .line 82
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/j/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/j/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_48

    .line 84
    :cond_57
    const/16 v1, 0x1388

    if-ge v1, v0, :cond_65

    const/16 v1, 0x13ec

    if-ge v0, v1, :cond_65

    .line 86
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/j/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/j/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_48

    .line 88
    :cond_65
    const/16 v1, 0x1770

    if-ge v1, v0, :cond_73

    const/16 v1, 0x17d4

    if-ge v0, v1, :cond_73

    .line 90
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/j/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/j/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_48

    .line 92
    :cond_73
    const/16 v1, 0x2328

    if-ge v1, v0, :cond_81

    const/16 v1, 0x238c

    if-ge v0, v1, :cond_81

    .line 94
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/j/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/j/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_48

    .line 96
    :cond_81
    const/16 v1, 0x1b58

    if-ge v1, v0, :cond_8f

    const/16 v1, 0x1bbc

    if-ge v0, v1, :cond_8f

    .line 98
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/j/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/j/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_48

    .line 100
    :cond_8f
    const/16 v1, 0x1f40

    if-ge v1, v0, :cond_9d

    const/16 v1, 0x1fa4

    if-ge v0, v1, :cond_9d

    .line 102
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/j/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/j/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_48

    .line 104
    :cond_9d
    const/16 v1, 0x2710

    if-ge v1, v0, :cond_48

    const/16 v1, 0x2774

    if-ge v0, v1, :cond_48

    .line 106
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/j/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/j/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_48
.end method

.method public a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V
    .registers 7

    .prologue
    .line 158
    iget-object v0, p0, Lcom/duoku/platform/c/a;->d:Lcom/duoku/platform/ui/DKContainerActivity;

    if-eqz v0, :cond_a

    .line 160
    iget-object v0, p0, Lcom/duoku/platform/c/a;->d:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    .line 177
    :cond_9
    :goto_9
    return-void

    .line 164
    :cond_a
    sget-object v0, Lcom/duoku/platform/c/b;->p:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_2c

    .line 166
    iget-object v0, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    const-string v1, "auto_login_state"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    iget-object v0, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    const-string v1, "sdk_view_id"

    sget-object v2, Lcom/duoku/platform/c/c;->x:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    iget-object v0, p0, Lcom/duoku/platform/c/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 170
    :cond_2c
    sget-object v0, Lcom/duoku/platform/c/b;->s:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_9

    .line 172
    iget-object v0, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    const-string v1, "auto_login_state"

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    const-string v1, "sdk_view_id"

    sget-object v2, Lcom/duoku/platform/c/c;->x:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lcom/duoku/platform/c/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method public a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V
    .registers 7

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/duoku/platform/c/c;->a()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_15

    invoke-virtual {p1}, Lcom/duoku/platform/c/c;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_15

    .line 147
    iget-object v0, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/j/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/duoku/platform/j/e;->a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    .line 149
    :cond_15
    invoke-virtual {p1}, Lcom/duoku/platform/c/c;->a()I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_2a

    invoke-virtual {p1}, Lcom/duoku/platform/c/c;->a()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_2a

    .line 151
    iget-object v0, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/j/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/duoku/platform/j/e;->a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    .line 153
    :cond_2a
    return-void
.end method

.method public a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 119
    iget-object v0, p0, Lcom/duoku/platform/c/a;->d:Lcom/duoku/platform/ui/DKContainerActivity;

    if-nez v0, :cond_3b

    .line 121
    iget-object v0, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    const-string v1, "sdk_view_id"

    invoke-virtual {p1}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    const-string v1, "dk_autologin_info"

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 124
    iget-object v1, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    const-string v2, "dk_autologin_info"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/duoku/platform/c/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 127
    iget-object v0, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    const-string v1, "function_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_3a

    .line 130
    iget-object v0, p0, Lcom/duoku/platform/c/a;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    .line 140
    :cond_3a
    :goto_3a
    return-void

    .line 138
    :cond_3b
    iget-object v0, p0, Lcom/duoku/platform/c/a;->d:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_3a
.end method

.method public a(Lcom/duoku/platform/ui/DKContainerActivity;)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/duoku/platform/c/a;->d:Lcom/duoku/platform/ui/DKContainerActivity;

    .line 194
    return-void
.end method

.method public b()Lcom/duoku/platform/b/a;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/j/e;

    return-object v0
.end method
