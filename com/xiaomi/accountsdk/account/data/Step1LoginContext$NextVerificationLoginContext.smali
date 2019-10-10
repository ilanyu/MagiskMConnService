.class public Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$LoginContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NextVerificationLoginContext"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/xiaomi/accountsdk/account/data/h;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextVerificationLoginContext;->a:Ljava/lang/String;

    return-object v0
.end method
