.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;
.super Ljava/lang/Thread;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;->this$1:Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method
