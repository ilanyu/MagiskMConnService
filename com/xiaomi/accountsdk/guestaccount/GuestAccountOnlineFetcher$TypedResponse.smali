.class Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TypedResponse"
.end annotation


# instance fields
.field final a:Ljava/lang/Integer;

.field final b:Lorg/json/JSONObject;

.field final c:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 4

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;->a:Ljava/lang/Integer;

    .line 402
    iput-object p2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;->b:Lorg/json/JSONObject;

    .line 403
    iput-object p3, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;->c:Lorg/json/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$1;)V
    .registers 5

    .line 395
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher$TypedResponse;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method
