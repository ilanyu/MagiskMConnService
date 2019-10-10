.class public Lcom/xiaomi/accountsdk/request/k;
.super Lcom/xiaomi/accountsdk/account/a/a;
.source "SourceFile"


# static fields
.field private static final f:J = 0x4cf220b7dd22aef3L


# instance fields
.field public e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/a/a;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/request/k;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 12
    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 5

    const/4 v0, -0x1

    .line 24
    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/accountsdk/account/a/a;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/request/k;->e:Z

    .line 25
    iput-boolean p3, p0, Lcom/xiaomi/accountsdk/request/k;->e:Z

    return-void
.end method
