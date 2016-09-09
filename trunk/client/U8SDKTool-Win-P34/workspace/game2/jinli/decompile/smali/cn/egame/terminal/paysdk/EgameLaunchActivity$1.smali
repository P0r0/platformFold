.class Lcn/egame/terminal/paysdk/EgameLaunchActivity$1;
.super Ljava/lang/Object;
.source "EgameLaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/egame/terminal/paysdk/EgameLaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/egame/terminal/paysdk/EgameLaunchActivity;


# direct methods
.method constructor <init>(Lcn/egame/terminal/paysdk/EgameLaunchActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcn/egame/terminal/paysdk/EgameLaunchActivity;

    .prologue
    .line 50
    iput-object p1, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity$1;->this$0:Lcn/egame/terminal/paysdk/EgameLaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcn/egame/terminal/paysdk/EgameLaunchActivity$1;->this$0:Lcn/egame/terminal/paysdk/EgameLaunchActivity;

    # invokes: Lcn/egame/terminal/paysdk/EgameLaunchActivity;->startGame()V
    invoke-static {v0}, Lcn/egame/terminal/paysdk/EgameLaunchActivity;->access$000(Lcn/egame/terminal/paysdk/EgameLaunchActivity;)V

    .line 55
    return-void
.end method
