.class Lcom/u8/sdk/test/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/test/MainActivity;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/test/MainActivity;


# direct methods
.method constructor <init>(Lcom/u8/sdk/test/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/test/MainActivity$7;->this$0:Lcom/u8/sdk/test/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity$7;->this$0:Lcom/u8/sdk/test/MainActivity;

    invoke-virtual {v0}, Lcom/u8/sdk/test/MainActivity;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
