.class Lorg/cocos2dx/lua/AppActivity$1;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lua/AppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lua/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lua/AppActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lua/AppActivity$1;->this$0:Lorg/cocos2dx/lua/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2dx/lua/AppActivity$1;->this$0:Lorg/cocos2dx/lua/AppActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lua/AppActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/cocos2dx/lua/AppActivity$1;->this$0:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lua/AppActivity;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
