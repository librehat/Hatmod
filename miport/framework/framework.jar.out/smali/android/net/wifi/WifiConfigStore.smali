.class Landroid/net/wifi/WifiConfigStore;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfigStore$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DNS_KEY:Ljava/lang/String; = "dns"

.field private static final EOS:Ljava/lang/String; = "eos"

.field private static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field private static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final IPCONFIG_FILE_VERSION:I = 0x2

.field private static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field private static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field private static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field private static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field private static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static final ipConfigFile:Ljava/lang/String;

.field private static sConfiguredNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sLastPriority:I

.field private static sNetworkIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    .line 120
    const/4 v0, -0x1

    sput v0, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/ipconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 685
    return-void
.end method

.method private static addIpSettingsFromConfig(Landroid/net/LinkProperties;Landroid/net/wifi/WifiConfiguration;)V
    .registers 7
    .parameter "linkProperties"
    .parameter "config"

    .prologue
    .line 1187
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1188
    .local v2, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {p0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    goto :goto_a

    .line 1190
    .end local v2           #linkAddr:Landroid/net/LinkAddress;
    :cond_1a
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 1191
    .local v3, route:Landroid/net/RouteInfo;
    invoke-virtual {p0, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_24

    .line 1193
    .end local v3           #route:Landroid/net/RouteInfo;
    :cond_34
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1194
    .local v0, dns:Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_3e

    .line 1196
    .end local v0           #dns:Ljava/net/InetAddress;
    :cond_4e
    return-void
.end method

.method static addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .parameter "config"

    .prologue
    .line 307
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v0

    .line 308
    .local v0, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 309
    invoke-virtual {v0}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    return v1
.end method

.method private static addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .registers 27
    .parameter "config"

    .prologue
    .line 871
    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 872
    .local v14, netId:I
    const/4 v15, 0x0

    .line 874
    .local v15, newNetwork:Z
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_21

    .line 875
    sget-object v22, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static/range {p0 .. p0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 876
    .local v18, savedNetId:Ljava/lang/Integer;
    if-eqz v18, :cond_85

    .line 877
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 888
    .end local v18           #savedNetId:Ljava/lang/Integer;
    :cond_21
    const/16 v19, 0x1

    .line 892
    .local v19, updateFailed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9d

    const-string/jumbo v22, "ssid"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_9d

    .line 897
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set SSID: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1049
    :goto_5a
    if-eqz v19, :cond_3df

    .line 1050
    if-eqz v15, :cond_79

    .line 1051
    invoke-static {v14}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    .line 1052
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to set a network variable, removed network: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1054
    :cond_79
    new-instance v16, Landroid/net/wifi/NetworkUpdateResult;

    const/16 v22, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    .line 1082
    .end local v19           #updateFailed:Z
    :goto_84
    return-object v16

    .line 879
    .restart local v18       #savedNetId:Ljava/lang/Integer;
    :cond_85
    const/4 v15, 0x1

    .line 880
    invoke-static {}, Landroid/net/wifi/WifiNative;->addNetworkCommand()I

    move-result v14

    .line 881
    if-gez v14, :cond_21

    .line 882
    const-string v22, "Failed to add a network!"

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 883
    new-instance v16, Landroid/net/wifi/NetworkUpdateResult;

    const/16 v22, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    goto :goto_84

    .line 901
    .end local v18           #savedNetId:Ljava/lang/Integer;
    .restart local v19       #updateFailed:Z
    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d4

    const-string v22, "bssid"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_d4

    .line 906
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set BSSID: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_5a

    .line 910
    :cond_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 912
    .local v5, allowedKeyManagementString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/BitSet;->cardinality()I

    move-result v22

    if-eqz v22, :cond_110

    const-string v22, "key_mgmt"

    move-object/from16 v0, v22

    invoke-static {v14, v0, v5}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_110

    .line 917
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set key_mgmt: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 922
    :cond_110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 924
    .local v7, allowedProtocolsString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/BitSet;->cardinality()I

    move-result v22

    if-eqz v22, :cond_14d

    const-string/jumbo v22, "proto"

    move-object/from16 v0, v22

    invoke-static {v14, v0, v7}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_14d

    .line 929
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set proto: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 934
    :cond_14d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 936
    .local v3, allowedAuthAlgorithmsString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/BitSet;->cardinality()I

    move-result v22

    if-eqz v22, :cond_189

    const-string v22, "auth_alg"

    move-object/from16 v0, v22

    invoke-static {v14, v0, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_189

    .line 941
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set auth_alg: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 946
    :cond_189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 949
    .local v6, allowedPairwiseCiphersString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/BitSet;->cardinality()I

    move-result v22

    if-eqz v22, :cond_1c6

    const-string/jumbo v22, "pairwise"

    move-object/from16 v0, v22

    invoke-static {v14, v0, v6}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1c6

    .line 954
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set pairwise: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 959
    :cond_1c6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 961
    .local v4, allowedGroupCiphersString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/BitSet;->cardinality()I

    move-result v22

    if-eqz v22, :cond_202

    const-string v22, "group"

    move-object/from16 v0, v22

    invoke-static {v14, v0, v4}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_202

    .line 966
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set group: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 973
    :cond_202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_232

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "*"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_232

    const-string/jumbo v22, "psk"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_232

    .line 978
    const-string v22, "failed to set psk"

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 982
    :cond_232
    const/4 v10, 0x0

    .line 983
    .local v10, hasSetKey:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2ab

    .line 984
    const/4 v11, 0x0

    .local v11, i:I
    :goto_23c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_2ab

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v11

    if-eqz v22, :cond_2a8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v11

    const-string v23, "*"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2a8

    .line 988
    sget-object v22, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v22, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v11

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2a7

    .line 992
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set wep_key"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v11

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 995
    :cond_2a7
    const/4 v10, 0x1

    .line 984
    :cond_2a8
    add-int/lit8 v11, v11, 0x1

    goto :goto_23c

    .line 1000
    .end local v11           #i:I
    :cond_2ab
    if-eqz v10, :cond_2e2

    .line 1001
    const-string/jumbo v22, "wep_tx_keyidx"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2e2

    .line 1005
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed to set wep_tx_keyidx: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 1010
    :cond_2e2
    const-string/jumbo v22, "priority"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_321

    .line 1014
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": failed to set priority: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 1019
    :cond_321
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v22, v0

    if-eqz v22, :cond_36f

    const-string/jumbo v23, "scan_ssid"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v22, v0

    if-eqz v22, :cond_36c

    const/16 v22, 0x1

    :goto_336
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_36f

    .line 1023
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": failed to set hiddenSSID: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 1019
    :cond_36c
    const/16 v22, 0x0

    goto :goto_336

    .line 1029
    :cond_36f
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v8, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v13, v8

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_375
    if-ge v12, v13, :cond_3db

    aget-object v9, v8, v12

    .line 1030
    .local v9, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v21

    .line 1031
    .local v21, varName:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v20

    .line 1032
    .local v20, value:Ljava/lang/String;
    if-eqz v20, :cond_3d8

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v9, v0, :cond_395

    .line 1034
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_3d3

    const-string v20, "NULL"

    .line 1036
    :cond_395
    :goto_395
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_3d8

    .line 1040
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": failed to set "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 1034
    :cond_3d3
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiConfigStore;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto :goto_395

    .line 1029
    :cond_3d8
    add-int/lit8 v12, v12, 0x1

    goto :goto_375

    .line 1046
    .end local v9           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v20           #value:Ljava/lang/String;
    .end local v21           #varName:Ljava/lang/String;
    :cond_3db
    const/16 v19, 0x0

    goto/16 :goto_5a

    .line 1065
    .end local v3           #allowedAuthAlgorithmsString:Ljava/lang/String;
    .end local v4           #allowedGroupCiphersString:Ljava/lang/String;
    .end local v5           #allowedKeyManagementString:Ljava/lang/String;
    .end local v6           #allowedPairwiseCiphersString:Ljava/lang/String;
    .end local v7           #allowedProtocolsString:Ljava/lang/String;
    .end local v8           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v10           #hasSetKey:Z
    .end local v12           #i$:I
    .end local v13           #len$:I
    :cond_3df
    sget-object v23, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v23

    .line 1066
    :try_start_3e2
    sget-object v22, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiConfiguration;

    .line 1067
    .local v17, sConfig:Landroid/net/wifi/WifiConfiguration;
    monitor-exit v23
    :try_end_3f3
    .catchall {:try_start_3e2 .. :try_end_3f3} :catchall_43a

    .line 1068
    if-nez v17, :cond_3fe

    .line 1069
    new-instance v17, Landroid/net/wifi/WifiConfiguration;

    .end local v17           #sConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-direct/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1070
    .restart local v17       #sConfig:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, v17

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1073
    :cond_3fe
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 1075
    sget-object v23, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v23

    .line 1076
    :try_start_404
    sget-object v22, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    sget-object v22, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    monitor-exit v23
    :try_end_42b
    .catchall {:try_start_404 .. :try_end_42b} :catchall_43d

    .line 1080
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v16

    .line 1081
    .local v16, result:Landroid/net/wifi/NetworkUpdateResult;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/net/wifi/NetworkUpdateResult;->setNetworkId(I)V

    goto/16 :goto_84

    .line 1067
    .end local v16           #result:Landroid/net/wifi/NetworkUpdateResult;
    .end local v17           #sConfig:Landroid/net/wifi/WifiConfiguration;
    :catchall_43a
    move-exception v22

    :try_start_43b
    monitor-exit v23
    :try_end_43c
    .catchall {:try_start_43b .. :try_end_43c} :catchall_43a

    throw v22

    .line 1078
    .restart local v17       #sConfig:Landroid/net/wifi/WifiConfiguration;
    :catchall_43d
    move-exception v22

    :try_start_43e
    monitor-exit v23
    :try_end_43f
    .catchall {:try_start_43e .. :try_end_43f} :catchall_43d

    throw v22
.end method

.method static clearIpConfiguration(I)V
    .registers 6
    .parameter "netId"

    .prologue
    .line 512
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 513
    :try_start_3
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 514
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_25

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_25

    .line 516
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 517
    .local v1, proxy:Landroid/net/ProxyProperties;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->clear()V

    .line 518
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 520
    .end local v1           #proxy:Landroid/net/ProxyProperties;
    :cond_25
    monitor-exit v3

    .line 521
    return-void

    .line 520
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method private static configKey(Landroid/net/wifi/WifiConfiguration;)I
    .registers 7
    .parameter "config"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1401
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1412
    .local v0, key:Ljava/lang/String;
    :goto_22
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1

    .line 1403
    .end local v0           #key:Ljava/lang/String;
    :cond_27
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1405
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_22

    .line 1406
    .end local v0           #key:Ljava/lang/String;
    :cond_50
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-eqz v1, :cond_6c

    .line 1407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_22

    .line 1409
    .end local v0           #key:Ljava/lang/String;
    :cond_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_22
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "string"

    .prologue
    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static disableNetwork(I)Z
    .registers 2
    .parameter "netId"

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v0

    return v0
.end method

.method static disableNetwork(II)Z
    .registers 8
    .parameter "netId"
    .parameter "reason"

    .prologue
    const/4 v5, 0x1

    .line 377
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->disableNetworkCommand(I)Z

    move-result v1

    .line 378
    .local v1, ret:Z
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 379
    :try_start_8
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 381
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1f

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v5, :cond_1f

    .line 382
    const/4 v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 383
    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 385
    :cond_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_24

    .line 386
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 387
    return v1

    .line 385
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2
.end method

.method static dump()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1416
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1417
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1418
    .local v0, LS:Ljava/lang/String;
    const-string/jumbo v4, "sLastPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget v5, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1419
    const-string v4, "Configured networks "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1420
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1421
    .local v1, conf:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2c

    .line 1423
    .end local v1           #conf:Landroid/net/wifi/WifiConfiguration;
    :cond_40
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static enableAllNetworks()V
    .registers 6

    .prologue
    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, networkEnabledStateChanged:Z
    sget-object v4, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 171
    :try_start_4
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 172
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_e

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_e

    .line 173
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 174
    const/4 v2, 0x1

    .line 175
    const/4 v3, 0x2

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_e

    .line 181
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v3

    .line 177
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_32
    :try_start_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enable network failed on "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_e

    .line 181
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_4b
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_32 .. :try_end_4c} :catchall_2f

    .line 183
    if-eqz v2, :cond_54

    .line 184
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 185
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 187
    :cond_54
    return-void
.end method

.method static enableNetwork(IZ)Z
    .registers 3
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 344
    invoke-static {p0, p1}, Landroid/net/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-result v0

    .line 345
    .local v0, ret:Z
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 346
    return v0
.end method

.method static enableNetworkWithoutBroadcast(IZ)Z
    .registers 7
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 350
    invoke-static {p0, p1}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z

    move-result v1

    .line 352
    .local v1, ret:Z
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 353
    :try_start_7
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 354
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_18

    const/4 v2, 0x2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 355
    :cond_18
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1f

    .line 357
    if-eqz p1, :cond_1e

    .line 358
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 360
    :cond_1e
    return v1

    .line 355
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_1f
    move-exception v2

    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method static forgetNetwork(I)V
    .registers 5
    .parameter "netId"

    .prologue
    .line 282
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 283
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 284
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 285
    :try_start_c
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 286
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_30

    .line 287
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_38

    .line 291
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 292
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 296
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :goto_37
    return-void

    .line 290
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1

    .line 294
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_37
.end method

.method public static getConfigFile()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1427
    sget-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method static getConfiguredNetworks()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    sget-object v4, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 157
    :try_start_8
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 158
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 160
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_27
    move-exception v3

    monitor-exit v4
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2a
    :try_start_2a
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    .line 161
    return-object v2
.end method

.method static getIpConfiguration(I)Landroid/net/DhcpInfoInternal;
    .registers 9
    .parameter "netId"

    .prologue
    .line 468
    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 469
    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v5

    .line 471
    .local v5, linkProperties:Landroid/net/LinkProperties;
    if-eqz v5, :cond_6d

    .line 472
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 473
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 474
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 475
    .local v4, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    .line 476
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 477
    .local v6, route:Landroid/net/RouteInfo;
    invoke-virtual {v0, v6}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_31

    .line 479
    .end local v6           #route:Landroid/net/RouteInfo;
    :cond_41
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v7

    iput v7, v0, Landroid/net/DhcpInfoInternal;->prefixLength:I

    .line 480
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 481
    .local v1, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    .line 482
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 483
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    .line 487
    .end local v1           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v4           #linkAddress:Landroid/net/LinkAddress;
    :cond_6d
    return-object v0
.end method

.method static getLinkProperties(I)Landroid/net/LinkProperties;
    .registers 5
    .parameter "netId"

    .prologue
    .line 453
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 454
    :try_start_3
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 455
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1a

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    monitor-exit v2

    .line 457
    :goto_19
    return-object v1

    .line 456
    :cond_1a
    monitor-exit v2

    .line 457
    const/4 v1, 0x0

    goto :goto_19

    .line 456
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method static getProxyProperties(I)Landroid/net/ProxyProperties;
    .registers 4
    .parameter "netId"

    .prologue
    .line 528
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    .line 529
    .local v0, linkProperties:Landroid/net/LinkProperties;
    if-eqz v0, :cond_10

    .line 530
    new-instance v1, Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    .line 532
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method static initialize(Landroid/content/Context;)V
    .registers 1
    .parameter "context"

    .prologue
    .line 145
    sput-object p0, Landroid/net/wifi/WifiConfigStore;->sContext:Landroid/content/Context;

    .line 146
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 147
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 148
    return-void
.end method

.method static isUsingStaticIp(I)Z
    .registers 5
    .parameter "netId"

    .prologue
    .line 539
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 540
    :try_start_3
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 541
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1a

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v1, v3, :cond_1a

    .line 542
    const/4 v1, 0x1

    monitor-exit v2

    .line 545
    :goto_19
    return v1

    .line 544
    :cond_1a
    monitor-exit v2

    .line 545
    const/4 v1, 0x0

    goto :goto_19

    .line 544
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method static loadConfiguredNetworks()V
    .registers 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x3

    const/4 v6, 0x0

    .line 555
    invoke-static {}, Landroid/net/wifi/WifiNative;->listNetworksCommand()Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, listStr:Ljava/lang/String;
    sput v6, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 558
    sget-object v7, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v7

    .line 559
    :try_start_c
    sget-object v6, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 560
    sget-object v6, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 562
    if-nez v4, :cond_1a

    .line 563
    monitor-exit v7

    .line 596
    :goto_19
    return-void

    .line 565
    :cond_1a
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, lines:[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_21
    array-length v6, v3

    if-ge v2, v6, :cond_95

    .line 568
    aget-object v6, v3, v2

    const-string v8, "\t"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 570
    .local v5, result:[Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_8a

    .line 572
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v6, 0x0

    :try_start_32
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_8a
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_3a} :catch_79

    .line 576
    :try_start_3a
    array-length v6, v5

    if-le v6, v10, :cond_91

    .line 577
    const/4 v6, 0x3

    aget-object v6, v5, v6

    const-string v8, "[CURRENT]"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v11, :cond_7b

    .line 578
    const/4 v6, 0x0

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 586
    :goto_4b
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 587
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sget v8, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    if-le v6, v8, :cond_58

    .line 588
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sput v6, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 590
    :cond_58
    sget-object v6, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v6, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 573
    :catch_79
    move-exception v1

    .line 574
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_76

    .line 579
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_7b
    const/4 v6, 0x3

    aget-object v6, v5, v6

    const-string v8, "[DISABLED]"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v11, :cond_8d

    .line 580
    const/4 v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_4b

    .line 593
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i:I
    .end local v3           #lines:[Ljava/lang/String;
    .end local v5           #result:[Ljava/lang/String;
    :catchall_8a
    move-exception v6

    monitor-exit v7
    :try_end_8c
    .catchall {:try_start_3a .. :try_end_8c} :catchall_8a

    throw v6

    .line 582
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #i:I
    .restart local v3       #lines:[Ljava/lang/String;
    .restart local v5       #result:[Ljava/lang/String;
    :cond_8d
    const/4 v6, 0x2

    :try_start_8e
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_4b

    .line 584
    :cond_91
    const/4 v6, 0x2

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_4b

    .line 593
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #result:[Ljava/lang/String;
    :cond_95
    monitor-exit v7
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_8a

    .line 594
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->readIpAndProxyConfigurations()V

    .line 595
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    goto/16 :goto_19
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 1435
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 1431
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    return-void
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "string"
    .parameter "strings"

    .prologue
    .line 1381
    array-length v1, p1

    .line 1383
    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_18

    .line 1386
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1394
    .end local v0           #i:I
    :goto_14
    return v0

    .line 1385
    .restart local v0       #i:I
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1392
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to look-up a string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1394
    const/4 v0, -0x1

    goto :goto_14
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 1361
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1362
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 1366
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 1368
    :goto_c
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 1369
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 1373
    :cond_29
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_38

    .line 1374
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1377
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static markAllNetworksDisabled()V
    .registers 1

    .prologue
    .line 625
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 626
    return-void
.end method

.method private static markAllNetworksDisabledExcept(I)V
    .registers 6
    .parameter "netId"

    .prologue
    const/4 v4, 0x1

    .line 612
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 613
    :try_start_4
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 614
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_e

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, p0, :cond_e

    .line 615
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v4, :cond_e

    .line 616
    const/4 v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 617
    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    goto :goto_e

    .line 621
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_2b
    move-exception v2

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2e
    :try_start_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2b

    .line 622
    return-void
.end method

.method private static readIpAndProxyConfigurations()V
    .registers 23

    .prologue
    .line 738
    const/4 v8, 0x0

    .line 740
    .local v8, in:Ljava/io/DataInputStream;
    :try_start_1
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v19, Ljava/io/BufferedInputStream;

    new-instance v20, Ljava/io/FileInputStream;

    sget-object v21, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-direct/range {v20 .. v21}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v19 .. v20}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_23d
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_14} :catch_243
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_240

    .line 743
    .end local v8           #in:Ljava/io/DataInputStream;
    .local v9, in:Ljava/io/DataInputStream;
    :try_start_14
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 744
    .local v18, version:I
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_65

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_65

    .line 745
    const-string v19, "Bad version on IP configuration file, ignore read"

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_17e
    .catch Ljava/io/EOFException; {:try_start_14 .. :try_end_2d} :catch_d5
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2d} :catch_10b

    .line 857
    if-eqz v9, :cond_32

    .line 859
    :try_start_2f
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_237

    :cond_32
    :goto_32
    move-object v8, v9

    .line 863
    .end local v9           #in:Ljava/io/DataInputStream;
    .end local v18           #version:I
    .restart local v8       #in:Ljava/io/DataInputStream;
    :cond_33
    :goto_33
    return-void

    .line 798
    .end local v8           #in:Ljava/io/DataInputStream;
    .local v5, exclusionList:Ljava/lang/String;
    .local v7, id:I
    .restart local v9       #in:Ljava/io/DataInputStream;
    .local v10, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v11, key:Ljava/lang/String;
    .local v13, linkProperties:Landroid/net/LinkProperties;
    .local v14, proxyHost:Ljava/lang/String;
    .local v15, proxyPort:I
    .local v17, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v18       #version:I
    :cond_34
    :try_start_34
    const-string v19, "eos"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_17e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_3b} :catch_bb
    .catch Ljava/io/EOFException; {:try_start_34 .. :try_end_3b} :catch_d5
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3b} :catch_10b

    move-result v19

    if-eqz v19, :cond_1cd

    .line 808
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_230

    .line 809
    :try_start_44
    sget-object v20, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v20
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_17e
    .catch Ljava/io/EOFException; {:try_start_44 .. :try_end_47} :catch_d5
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_10b

    .line 810
    :try_start_47
    sget-object v19, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    sget-object v21, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 813
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v2, :cond_1ee

    .line 814
    const-string v19, "configuration found for missing network, ignored"

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 848
    :goto_64
    :pswitch_64
    monitor-exit v20
    :try_end_65
    .catchall {:try_start_47 .. :try_end_65} :catchall_212

    .line 750
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #exclusionList:Ljava/lang/String;
    .end local v7           #id:I
    .end local v10           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #proxyHost:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v17           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_65
    :goto_65
    const/4 v7, -0x1

    .line 751
    .restart local v7       #id:I
    :try_start_66
    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 752
    .restart local v10       #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    sget-object v17, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 753
    .restart local v17       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    new-instance v13, Landroid/net/LinkProperties;

    invoke-direct {v13}, Landroid/net/LinkProperties;-><init>()V

    .line 754
    .restart local v13       #linkProperties:Landroid/net/LinkProperties;
    const/4 v14, 0x0

    .line 755
    .restart local v14       #proxyHost:Ljava/lang/String;
    const/4 v15, -0x1

    .line 756
    .restart local v15       #proxyPort:I
    const/4 v5, 0x0

    .line 760
    .restart local v5       #exclusionList:Ljava/lang/String;
    :goto_72
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_75
    .catchall {:try_start_66 .. :try_end_75} :catchall_17e
    .catch Ljava/io/EOFException; {:try_start_66 .. :try_end_75} :catch_d5
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_75} :catch_10b

    move-result-object v11

    .line 762
    .restart local v11       #key:Ljava/lang/String;
    :try_start_76
    const-string v19, "id"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_85

    .line 763
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    goto :goto_72

    .line 764
    :cond_85
    const-string v19, "ipAssignment"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_98

    .line 765
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-result-object v10

    goto :goto_72

    .line 766
    :cond_98
    const-string v19, "linkAddress"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e1

    .line 767
    new-instance v12, Landroid/net/LinkAddress;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 769
    .local v12, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v13, v12}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_ba
    .catchall {:try_start_76 .. :try_end_ba} :catchall_17e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_76 .. :try_end_ba} :catch_bb
    .catch Ljava/io/EOFException; {:try_start_76 .. :try_end_ba} :catch_d5
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_ba} :catch_10b

    goto :goto_72

    .line 803
    .end local v12           #linkAddr:Landroid/net/LinkAddress;
    :catch_bb
    move-exception v4

    .line 804
    .local v4, e:Ljava/lang/IllegalArgumentException;
    :try_start_bc
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignore invalid address while reading"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_d4
    .catchall {:try_start_bc .. :try_end_d4} :catchall_17e
    .catch Ljava/io/EOFException; {:try_start_bc .. :try_end_d4} :catch_d5
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_d4} :catch_10b

    goto :goto_72

    .line 853
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #exclusionList:Ljava/lang/String;
    .end local v7           #id:I
    .end local v10           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #proxyHost:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v17           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v18           #version:I
    :catch_d5
    move-exception v19

    move-object v8, v9

    .line 857
    .end local v9           #in:Ljava/io/DataInputStream;
    .restart local v8       #in:Ljava/io/DataInputStream;
    :goto_d7
    if-eqz v8, :cond_33

    .line 859
    :try_start_d9
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_de

    goto/16 :goto_33

    .line 860
    :catch_de
    move-exception v19

    goto/16 :goto_33

    .line 770
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v5       #exclusionList:Ljava/lang/String;
    .restart local v7       #id:I
    .restart local v9       #in:Ljava/io/DataInputStream;
    .restart local v10       #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #linkProperties:Landroid/net/LinkProperties;
    .restart local v14       #proxyHost:Ljava/lang/String;
    .restart local v15       #proxyPort:I
    .restart local v17       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v18       #version:I
    :cond_e1
    :try_start_e1
    const-string v19, "gateway"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_165

    .line 771
    const/4 v3, 0x0

    .line 772
    .local v3, dest:Landroid/net/LinkAddress;
    const/4 v6, 0x0

    .line 773
    .local v6, gateway:Ljava/net/InetAddress;
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12f

    .line 775
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 786
    :cond_fd
    :goto_fd
    new-instance v19, Landroid/net/RouteInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V
    :try_end_109
    .catchall {:try_start_e1 .. :try_end_109} :catchall_17e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e1 .. :try_end_109} :catch_bb
    .catch Ljava/io/EOFException; {:try_start_e1 .. :try_end_109} :catch_d5
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_109} :catch_10b

    goto/16 :goto_72

    .line 854
    .end local v3           #dest:Landroid/net/LinkAddress;
    .end local v5           #exclusionList:Ljava/lang/String;
    .end local v6           #gateway:Ljava/net/InetAddress;
    .end local v7           #id:I
    .end local v10           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #proxyHost:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v17           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v18           #version:I
    :catch_10b
    move-exception v4

    move-object v8, v9

    .line 855
    .end local v9           #in:Ljava/io/DataInputStream;
    .local v4, e:Ljava/io/IOException;
    .restart local v8       #in:Ljava/io/DataInputStream;
    :goto_10d
    :try_start_10d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error parsing configuration"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_125
    .catchall {:try_start_10d .. :try_end_125} :catchall_23d

    .line 857
    if-eqz v8, :cond_33

    .line 859
    :try_start_127
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12a} :catch_12c

    goto/16 :goto_33

    .line 860
    :catch_12c
    move-exception v19

    goto/16 :goto_33

    .line 777
    .end local v4           #e:Ljava/io/IOException;
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v3       #dest:Landroid/net/LinkAddress;
    .restart local v5       #exclusionList:Ljava/lang/String;
    .restart local v6       #gateway:Ljava/net/InetAddress;
    .restart local v7       #id:I
    .restart local v9       #in:Ljava/io/DataInputStream;
    .restart local v10       #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #linkProperties:Landroid/net/LinkProperties;
    .restart local v14       #proxyHost:Ljava/lang/String;
    .restart local v15       #proxyPort:I
    .restart local v17       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v18       #version:I
    :cond_12f
    :try_start_12f
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_150

    .line 778
    new-instance v3, Landroid/net/LinkAddress;

    .end local v3           #dest:Landroid/net/LinkAddress;
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 782
    .restart local v3       #dest:Landroid/net/LinkAddress;
    :cond_150
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_fd

    .line 783
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_fd

    .line 787
    .end local v3           #dest:Landroid/net/LinkAddress;
    .end local v6           #gateway:Ljava/net/InetAddress;
    :cond_165
    const-string v19, "dns"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_186

    .line 788
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_17c
    .catchall {:try_start_12f .. :try_end_17c} :catchall_17e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12f .. :try_end_17c} :catch_bb
    .catch Ljava/io/EOFException; {:try_start_12f .. :try_end_17c} :catch_d5
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_17c} :catch_10b

    goto/16 :goto_72

    .line 857
    .end local v5           #exclusionList:Ljava/lang/String;
    .end local v7           #id:I
    .end local v10           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #proxyHost:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v17           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v18           #version:I
    :catchall_17e
    move-exception v19

    move-object v8, v9

    .end local v9           #in:Ljava/io/DataInputStream;
    .restart local v8       #in:Ljava/io/DataInputStream;
    :goto_180
    if-eqz v8, :cond_185

    .line 859
    :try_start_182
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_185} :catch_23a

    .line 860
    :cond_185
    :goto_185
    throw v19

    .line 790
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v5       #exclusionList:Ljava/lang/String;
    .restart local v7       #id:I
    .restart local v9       #in:Ljava/io/DataInputStream;
    .restart local v10       #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #linkProperties:Landroid/net/LinkProperties;
    .restart local v14       #proxyHost:Ljava/lang/String;
    .restart local v15       #proxyPort:I
    .restart local v17       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v18       #version:I
    :cond_186
    :try_start_186
    const-string/jumbo v19, "proxySettings"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19b

    .line 791
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-result-object v17

    goto/16 :goto_72

    .line 792
    :cond_19b
    const-string/jumbo v19, "proxyHost"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1ac

    .line 793
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_72

    .line 794
    :cond_1ac
    const-string/jumbo v19, "proxyPort"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1bd

    .line 795
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    goto/16 :goto_72

    .line 796
    :cond_1bd
    const-string v19, "exclusionList"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_34

    .line 797
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_72

    .line 801
    :cond_1cd
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignore unknown key "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "while reading"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_1ec
    .catchall {:try_start_186 .. :try_end_1ec} :catchall_17e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_186 .. :try_end_1ec} :catch_bb
    .catch Ljava/io/EOFException; {:try_start_186 .. :try_end_1ec} :catch_d5
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_1ec} :catch_10b

    goto/16 :goto_72

    .line 816
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1ee
    :try_start_1ee
    iput-object v13, v2, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 817
    sget-object v19, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v21

    aget v19, v19, v21

    packed-switch v19, :pswitch_data_246

    .line 826
    const-string v19, "Ignore invalid ip assignment while reading"

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 830
    :goto_200
    :pswitch_200
    sget-object v19, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v21

    aget v19, v19, v21

    packed-switch v19, :pswitch_data_250

    .line 844
    const-string v19, "Ignore invalid proxy settings while reading"

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_64

    .line 848
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_212
    move-exception v19

    monitor-exit v20
    :try_end_214
    .catchall {:try_start_1ee .. :try_end_214} :catchall_212

    :try_start_214
    throw v19
    :try_end_215
    .catchall {:try_start_214 .. :try_end_215} :catchall_17e
    .catch Ljava/io/EOFException; {:try_start_214 .. :try_end_215} :catch_d5
    .catch Ljava/io/IOException; {:try_start_214 .. :try_end_215} :catch_10b

    .line 820
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    :pswitch_215
    :try_start_215
    iput-object v10, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_200

    .line 832
    :pswitch_218
    move-object/from16 v0, v17

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 833
    new-instance v16, Landroid/net/ProxyProperties;

    move-object/from16 v0, v16

    invoke-direct {v0, v14, v15, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 835
    .local v16, proxyProperties:Landroid/net/ProxyProperties;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto/16 :goto_64

    .line 838
    .end local v16           #proxyProperties:Landroid/net/ProxyProperties;
    :pswitch_22a
    move-object/from16 v0, v17

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :try_end_22e
    .catchall {:try_start_215 .. :try_end_22e} :catchall_212

    goto/16 :goto_64

    .line 850
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_230
    :try_start_230
    const-string v19, "Missing id while parsing configuration"

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_235
    .catchall {:try_start_230 .. :try_end_235} :catchall_17e
    .catch Ljava/io/EOFException; {:try_start_230 .. :try_end_235} :catch_d5
    .catch Ljava/io/IOException; {:try_start_230 .. :try_end_235} :catch_10b

    goto/16 :goto_65

    .line 860
    .end local v5           #exclusionList:Ljava/lang/String;
    .end local v7           #id:I
    .end local v10           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #proxyHost:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v17           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :catch_237
    move-exception v19

    goto/16 :goto_32

    .end local v9           #in:Ljava/io/DataInputStream;
    .end local v18           #version:I
    .restart local v8       #in:Ljava/io/DataInputStream;
    :catch_23a
    move-exception v20

    goto/16 :goto_185

    .line 857
    :catchall_23d
    move-exception v19

    goto/16 :goto_180

    .line 854
    :catch_240
    move-exception v4

    goto/16 :goto_10d

    .line 853
    :catch_243
    move-exception v19

    goto/16 :goto_d7

    .line 817
    :pswitch_data_246
    .packed-switch 0x1
        :pswitch_215
        :pswitch_215
        :pswitch_200
    .end packed-switch

    .line 830
    :pswitch_data_250
    .packed-switch 0x1
        :pswitch_218
        :pswitch_22a
        :pswitch_64
    .end packed-switch
.end method

.method private static readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .registers 15
    .parameter "config"

    .prologue
    const/4 v10, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 1206
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1207
    .local v6, netId:I
    if-gez v6, :cond_8

    .line 1349
    :cond_7
    return-void

    .line 1217
    :cond_8
    const-string/jumbo v11, "ssid"

    invoke-static {v6, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1218
    .local v9, value:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_80

    .line 1219
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1224
    :goto_17
    const-string v11, "bssid"

    invoke-static {v6, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1225
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_83

    .line 1226
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1231
    :goto_25
    const-string/jumbo v11, "priority"

    invoke-static {v6, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1232
    iput v13, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1233
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3a

    .line 1235
    :try_start_34
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_3a} :catch_1a0

    .line 1240
    :cond_3a
    :goto_3a
    const-string/jumbo v11, "scan_ssid"

    invoke-static {v6, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1241
    iput-boolean v10, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1242
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_52

    .line 1244
    :try_start_49
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_50

    const/4 v10, 0x1

    :cond_50
    iput-boolean v10, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_52} :catch_19d

    .line 1249
    :cond_52
    :goto_52
    const-string/jumbo v10, "wep_tx_keyidx"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1250
    iput v13, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1251
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_67

    .line 1253
    :try_start_61
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_61 .. :try_end_67} :catch_19a

    .line 1258
    :cond_67
    :goto_67
    const/4 v2, 0x0

    .local v2, i:I
    :goto_68
    const/4 v10, 0x4

    if-ge v2, v10, :cond_8b

    .line 1259
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1261
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_86

    .line 1262
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v9, v10, v2

    .line 1258
    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 1221
    .end local v2           #i:I
    :cond_80
    iput-object v12, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_17

    .line 1228
    :cond_83
    iput-object v12, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_25

    .line 1264
    .restart local v2       #i:I
    :cond_86
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v12, v10, v2

    goto :goto_7d

    .line 1268
    :cond_8b
    const-string/jumbo v10, "psk"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1269
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c6

    .line 1270
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1275
    :goto_9a
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string/jumbo v11, "proto"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1277
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c9

    .line 1278
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1279
    .local v8, vals:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b2
    if-ge v3, v5, :cond_c9

    aget-object v7, v0, v3

    .line 1280
    .local v7, val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1282
    .local v4, index:I
    if-ltz v4, :cond_c3

    .line 1283
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1279
    :cond_c3
    add-int/lit8 v3, v3, 0x1

    goto :goto_b2

    .line 1272
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_c6
    iput-object v12, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_9a

    .line 1288
    :cond_c9
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v11, "key_mgmt"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1290
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f4

    .line 1291
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1292
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_e0
    if-ge v3, v5, :cond_f4

    aget-object v7, v0, v3

    .line 1293
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1295
    .restart local v4       #index:I
    if-ltz v4, :cond_f1

    .line 1296
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1292
    :cond_f1
    add-int/lit8 v3, v3, 0x1

    goto :goto_e0

    .line 1301
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_f4
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v11, "auth_alg"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1303
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11f

    .line 1304
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1305
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_10b
    if-ge v3, v5, :cond_11f

    aget-object v7, v0, v3

    .line 1306
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1308
    .restart local v4       #index:I
    if-ltz v4, :cond_11c

    .line 1309
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1305
    :cond_11c
    add-int/lit8 v3, v3, 0x1

    goto :goto_10b

    .line 1314
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_11f
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string/jumbo v11, "pairwise"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1316
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14b

    .line 1317
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1318
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_137
    if-ge v3, v5, :cond_14b

    aget-object v7, v0, v3

    .line 1319
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1321
    .restart local v4       #index:I
    if-ltz v4, :cond_148

    .line 1322
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1318
    :cond_148
    add-int/lit8 v3, v3, 0x1

    goto :goto_137

    .line 1327
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_14b
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v11, "group"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1329
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_176

    .line 1330
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1331
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_162
    if-ge v3, v5, :cond_176

    aget-object v7, v0, v3

    .line 1332
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1334
    .restart local v4       #index:I
    if-ltz v4, :cond_173

    .line 1335
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1331
    :cond_173
    add-int/lit8 v3, v3, 0x1

    goto :goto_162

    .line 1341
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_176
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_17a
    if-ge v3, v5, :cond_7

    aget-object v1, v0, v3

    .line 1342
    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1344
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_197

    .line 1345
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eq v1, v10, :cond_194

    invoke-static {v9}, Landroid/net/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1346
    :cond_194
    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 1341
    :cond_197
    add-int/lit8 v3, v3, 0x1

    goto :goto_17a

    .line 1254
    .end local v0           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v1           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v5           #len$:I
    :catch_19a
    move-exception v10

    goto/16 :goto_67

    .line 1245
    :catch_19d
    move-exception v10

    goto/16 :goto_52

    .line 1236
    :catch_1a0
    move-exception v11

    goto/16 :goto_3a
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "string"

    .prologue
    .line 1352
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_a

    const-string v0, ""

    .line 1353
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method static removeNetwork(I)Z
    .registers 6
    .parameter "netId"

    .prologue
    .line 321
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    move-result v1

    .line 322
    .local v1, ret:Z
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 323
    if-eqz v1, :cond_2d

    .line 324
    :try_start_9
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 325
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2d

    .line 326
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_32

    .line 331
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 332
    return v1

    .line 330
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v2
.end method

.method static saveConfig()Z
    .registers 1

    .prologue
    .line 394
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    move-result v0

    return v0
.end method

.method static saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .registers 7
    .parameter "config"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 261
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v5, :cond_30

    const/4 v1, 0x1

    .line 262
    .local v1, newNetwork:Z
    :goto_7
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v2

    .line 263
    .local v2, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v2}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v0

    .line 265
    .local v0, netId:I
    if-eqz v1, :cond_29

    if-eq v0, v5, :cond_29

    .line 266
    invoke-static {v0, v3}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z

    .line 267
    sget-object v4, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 268
    :try_start_19
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    const/4 v5, 0x2

    iput v5, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 269
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_32

    .line 271
    :cond_29
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 272
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 273
    return-object v2

    .end local v0           #netId:I
    .end local v1           #newNetwork:Z
    .end local v2           #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_30
    move v1, v3

    .line 261
    goto :goto_7

    .line 269
    .restart local v0       #netId:I
    .restart local v1       #newNetwork:Z
    .restart local v2       #result:Landroid/net/wifi/NetworkUpdateResult;
    :catchall_32
    move-exception v3

    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v3
.end method

.method static selectNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 5
    .parameter "config"

    .prologue
    const/4 v2, -0x1

    .line 202
    if-eqz p0, :cond_28

    .line 203
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v1

    .line 204
    .local v1, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v1}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v0

    .line 205
    .local v0, netId:I
    if-eq v0, v2, :cond_11

    .line 206
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)V

    .line 212
    .end local v0           #netId:I
    .end local v1           #result:Landroid/net/wifi/NetworkUpdateResult;
    :goto_10
    return v0

    .line 208
    .restart local v0       #netId:I
    .restart local v1       #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_10

    .end local v0           #netId:I
    .end local v1           #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_28
    move v0, v2

    .line 212
    goto :goto_10
.end method

.method static selectNetwork(I)V
    .registers 7
    .parameter "netId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 228
    sget v2, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    if-eq v2, v4, :cond_d

    sget v2, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    const v3, 0xf4240

    if-le v2, v3, :cond_37

    .line 229
    :cond_d
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 230
    :try_start_10
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 231
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v4, :cond_1a

    .line 232
    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 233
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    goto :goto_1a

    .line 236
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_31
    move-exception v2

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_31

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_34
    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_31

    .line 237
    sput v5, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 241
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_37
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 242
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    iput p0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 243
    sget v2, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 245
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    .line 246
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 249
    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/net/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 253
    return-void
.end method

.method private static sendConfiguredNetworksChangedBroadcast()V
    .registers 2

    .prologue
    .line 549
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 552
    return-void
.end method

.method static setIpConfiguration(ILandroid/net/DhcpInfoInternal;)V
    .registers 7
    .parameter "netId"
    .parameter "dhcpInfo"

    .prologue
    .line 494
    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 496
    .local v1, linkProperties:Landroid/net/LinkProperties;
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 497
    :try_start_7
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 498
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_24

    .line 500
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_22

    .line 501
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 503
    :cond_22
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 505
    :cond_24
    monitor-exit v3

    .line 506
    return-void

    .line 505
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v2
.end method

.method static startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .registers 3
    .parameter "config"

    .prologue
    .line 437
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 438
    .local v0, result:Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->startWpsPbcCommand(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 440
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 441
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 446
    :goto_14
    return-object v0

    .line 443
    :cond_15
    const-string v1, "Failed to start WPS push button configuration"

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 444
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_14
.end method

.method static startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .registers 4
    .parameter "config"

    .prologue
    .line 402
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 403
    .local v0, result:Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/wifi/WifiNative;->startWpsWithPinFromAccessPointCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 405
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 406
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 411
    :goto_16
    return-object v0

    .line 408
    :cond_17
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 409
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_16
.end method

.method static startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .registers 3
    .parameter "config"

    .prologue
    .line 420
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 421
    .local v0, result:Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->startWpsWithPinFromDeviceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    .line 423
    iget-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 424
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 425
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 430
    :goto_1c
    return-object v0

    .line 427
    :cond_1d
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 428
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_1c
.end method

.method static updateIpAndProxyFromWpsConfig(ILandroid/net/wifi/WpsInfo;)V
    .registers 6
    .parameter "netId"
    .parameter "wpsConfig"

    .prologue
    .line 599
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 600
    :try_start_3
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 601
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_20

    .line 602
    iget-object v1, p1, Landroid/net/wifi/WpsInfo;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 603
    iget-object v1, p1, Landroid/net/wifi/WpsInfo;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 604
    iget-object v1, p1, Landroid/net/wifi/WpsInfo;->linkProperties:Landroid/net/LinkProperties;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 605
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 607
    :cond_20
    monitor-exit v2

    .line 608
    return-void

    .line 607
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private static writeIpAndProxyConfigurations()V
    .registers 18

    .prologue
    .line 630
    const/4 v10, 0x0

    .line 632
    .local v10, out:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v11, Ljava/io/DataOutputStream;

    new-instance v15, Ljava/io/BufferedOutputStream;

    new-instance v16, Ljava/io/FileOutputStream;

    sget-object v17, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-direct/range {v16 .. v17}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v15 .. v16}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_1d0

    .line 635
    .end local v10           #out:Ljava/io/DataOutputStream;
    .local v11, out:Ljava/io/DataOutputStream;
    const/4 v15, 0x2

    :try_start_13
    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 637
    sget-object v16, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v16
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1cd
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_71

    .line 638
    :try_start_19
    sget-object v15, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1b4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_6e

    .line 639
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v14, 0x0

    .line 642
    .local v14, writeToFile:Z
    :try_start_30
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 643
    .local v9, linkProperties:Landroid/net/LinkProperties;
    sget-object v15, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v17

    aget v15, v15, v17

    packed-switch v15, :pswitch_data_1d6

    .line 684
    const-string v15, "Ignore invalid ip assignment while writing"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 688
    :goto_46
    :pswitch_46
    sget-object v15, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v17

    aget v15, v15, v17

    packed-switch v15, :pswitch_data_1e0

    .line 711
    const-string v15, "Ignore invalid proxy settings while writing"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 714
    :goto_5a
    :pswitch_5a
    if-eqz v14, :cond_68

    .line 715
    const-string v15, "id"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 716
    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_68
    .catchall {:try_start_30 .. :try_end_68} :catchall_6e
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_68} :catch_b8

    .line 721
    .end local v9           #linkProperties:Landroid/net/LinkProperties;
    :cond_68
    :goto_68
    :try_start_68
    const-string v15, "eos"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_23

    .line 723
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v14           #writeToFile:Z
    :catchall_6e
    move-exception v15

    monitor-exit v16
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_6e

    :try_start_70
    throw v15
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_1cd
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_71} :catch_71

    .line 725
    :catch_71
    move-exception v3

    move-object v10, v11

    .line 726
    .end local v11           #out:Ljava/io/DataOutputStream;
    .local v3, e:Ljava/io/IOException;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    :goto_73
    :try_start_73
    const-string v15, "Error writing data file"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_1c1

    .line 728
    if-eqz v10, :cond_7d

    .line 730
    :try_start_7a
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_1c8

    .line 734
    .end local v3           #e:Ljava/io/IOException;
    :cond_7d
    :goto_7d
    return-void

    .line 645
    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v9       #linkProperties:Landroid/net/LinkProperties;
    .restart local v11       #out:Ljava/io/DataOutputStream;
    .restart local v14       #writeToFile:Z
    :pswitch_7e
    :try_start_7e
    const-string v15, "ipAssignment"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 646
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_94
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_dc

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    .line 648
    .local v8, linkAddr:Landroid/net/LinkAddress;
    const-string v15, "linkAddress"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_b7
    .catchall {:try_start_7e .. :try_end_b7} :catchall_6e
    .catch Ljava/lang/NullPointerException; {:try_start_7e .. :try_end_b7} :catch_b8

    goto :goto_94

    .line 718
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #linkAddr:Landroid/net/LinkAddress;
    .end local v9           #linkProperties:Landroid/net/LinkProperties;
    :catch_b8
    move-exception v3

    .line 719
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_b9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failure in writing "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_db
    .catchall {:try_start_b9 .. :try_end_db} :catchall_6e

    goto :goto_68

    .line 652
    .end local v3           #e:Ljava/lang/NullPointerException;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #linkProperties:Landroid/net/LinkProperties;
    :cond_dc
    :try_start_dc
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_131

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/RouteInfo;

    .line 653
    .local v13, route:Landroid/net/RouteInfo;
    const-string v15, "gateway"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v2

    .line 655
    .local v2, dest:Landroid/net/LinkAddress;
    if-eqz v2, :cond_127

    .line 656
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 657
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 662
    :goto_111
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v15

    if-eqz v15, :cond_12c

    .line 663
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 664
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_e4

    .line 660
    :cond_127
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_111

    .line 666
    :cond_12c
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_e4

    .line 669
    .end local v2           #dest:Landroid/net/LinkAddress;
    .end local v13           #route:Landroid/net/RouteInfo;
    :cond_131
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_139
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_152

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 670
    .local v7, inetAddr:Ljava/net/InetAddress;
    const-string v15, "dns"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_139

    .line 673
    .end local v7           #inetAddr:Ljava/net/InetAddress;
    :cond_152
    const/4 v14, 0x1

    .line 674
    goto/16 :goto_46

    .line 676
    .end local v6           #i$:Ljava/util/Iterator;
    :pswitch_155
    const-string v15, "ipAssignment"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 677
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 678
    const/4 v14, 0x1

    .line 679
    goto/16 :goto_46

    .line 690
    :pswitch_166
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v12

    .line 691
    .local v12, proxyProperties:Landroid/net/ProxyProperties;
    invoke-virtual {v12}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v4

    .line 692
    .local v4, exclusionList:Ljava/lang/String;
    const-string/jumbo v15, "proxySettings"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 693
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 694
    const-string/jumbo v15, "proxyHost"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v12}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 696
    const-string/jumbo v15, "proxyPort"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v12}, Landroid/net/ProxyProperties;->getPort()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 698
    const-string v15, "exclusionList"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v11, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 700
    const/4 v14, 0x1

    .line 701
    goto/16 :goto_5a

    .line 703
    .end local v4           #exclusionList:Ljava/lang/String;
    .end local v12           #proxyProperties:Landroid/net/ProxyProperties;
    :pswitch_1a2
    const-string/jumbo v15, "proxySettings"

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 704
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1b1
    .catchall {:try_start_dc .. :try_end_1b1} :catchall_6e
    .catch Ljava/lang/NullPointerException; {:try_start_dc .. :try_end_1b1} :catch_b8

    .line 705
    const/4 v14, 0x1

    .line 706
    goto/16 :goto_5a

    .line 723
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v9           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #writeToFile:Z
    :cond_1b4
    :try_start_1b4
    monitor-exit v16
    :try_end_1b5
    .catchall {:try_start_1b4 .. :try_end_1b5} :catchall_6e

    .line 728
    if-eqz v11, :cond_1d3

    .line 730
    :try_start_1b7
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1ba} :catch_1bd

    move-object v10, v11

    .line 731
    .end local v11           #out:Ljava/io/DataOutputStream;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    goto/16 :goto_7d

    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v11       #out:Ljava/io/DataOutputStream;
    :catch_1bd
    move-exception v15

    move-object v10, v11

    .end local v11           #out:Ljava/io/DataOutputStream;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    goto/16 :goto_7d

    .line 728
    :catchall_1c1
    move-exception v15

    :goto_1c2
    if-eqz v10, :cond_1c7

    .line 730
    :try_start_1c4
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1c7} :catch_1cb

    .line 731
    :cond_1c7
    :goto_1c7
    throw v15

    .local v3, e:Ljava/io/IOException;
    :catch_1c8
    move-exception v15

    goto/16 :goto_7d

    .end local v3           #e:Ljava/io/IOException;
    :catch_1cb
    move-exception v16

    goto :goto_1c7

    .line 728
    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v11       #out:Ljava/io/DataOutputStream;
    :catchall_1cd
    move-exception v15

    move-object v10, v11

    .end local v11           #out:Ljava/io/DataOutputStream;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    goto :goto_1c2

    .line 725
    :catch_1d0
    move-exception v3

    goto/16 :goto_73

    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v11       #out:Ljava/io/DataOutputStream;
    :cond_1d3
    move-object v10, v11

    .end local v11           #out:Ljava/io/DataOutputStream;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    goto/16 :goto_7d

    .line 643
    :pswitch_data_1d6
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_155
        :pswitch_46
    .end packed-switch

    .line 688
    :pswitch_data_1e0
    .packed-switch 0x1
        :pswitch_166
        :pswitch_1a2
        :pswitch_5a
    .end packed-switch
.end method

.method private static writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .registers 19
    .parameter "currentConfig"
    .parameter "newConfig"

    .prologue
    .line 1089
    const/4 v6, 0x0

    .line 1090
    .local v6, ipChanged:Z
    const/4 v13, 0x0

    .line 1091
    .local v13, proxyChanged:Z
    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    .line 1093
    .local v8, linkProperties:Landroid/net/LinkProperties;
    sget-object v15, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_1b6

    .line 1128
    const-string v15, "Ignore invalid ip assignment during write"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1132
    :cond_1d
    :goto_1d
    :pswitch_1d
    sget-object v15, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_1c0

    .line 1152
    const-string v15, "Ignore invalid proxy configuration during write"

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1156
    :cond_33
    :goto_33
    :pswitch_33
    if-nez v6, :cond_127

    .line 1157
    move-object/from16 v0, p0

    invoke-static {v8, v0}, Landroid/net/wifi/WifiConfigStore;->addIpSettingsFromConfig(Landroid/net/LinkProperties;Landroid/net/wifi/WifiConfiguration;)V

    .line 1166
    :goto_3a
    if-nez v13, :cond_160

    .line 1167
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 1177
    :cond_47
    :goto_47
    if-nez v6, :cond_4b

    if-eqz v13, :cond_55

    .line 1178
    :cond_4b
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1179
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 1180
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1182
    :cond_55
    new-instance v15, Landroid/net/wifi/NetworkUpdateResult;

    invoke-direct {v15, v6, v13}, Landroid/net/wifi/NetworkUpdateResult;-><init>(ZZ)V

    return-object v15

    .line 1095
    :pswitch_5b
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v3

    .line 1097
    .local v3, currentLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v11

    .line 1099
    .local v11, newLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    .line 1100
    .local v1, currentDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v9

    .line 1101
    .local v9, newDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    .line 1102
    .local v4, currentRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v12

    .line 1104
    .local v12, newRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_9d

    invoke-interface {v3, v11}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_db

    :cond_9d
    const/4 v7, 0x1

    .line 1107
    .local v7, linkAddressesDiffer:Z
    :goto_9e
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_b0

    invoke-interface {v1, v9}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_dd

    :cond_b0
    const/4 v5, 0x1

    .line 1109
    .local v5, dnsesDiffer:Z
    :goto_b1
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_c3

    invoke-interface {v4, v12}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_df

    :cond_c3
    const/4 v14, 0x1

    .line 1112
    .local v14, routesDiffer:Z
    :goto_c4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_d8

    if-nez v7, :cond_d8

    if-nez v5, :cond_d8

    if-eqz v14, :cond_1d

    .line 1116
    :cond_d8
    const/4 v6, 0x1

    goto/16 :goto_1d

    .line 1104
    .end local v5           #dnsesDiffer:Z
    .end local v7           #linkAddressesDiffer:Z
    .end local v14           #routesDiffer:Z
    :cond_db
    const/4 v7, 0x0

    goto :goto_9e

    .line 1107
    .restart local v7       #linkAddressesDiffer:Z
    :cond_dd
    const/4 v5, 0x0

    goto :goto_b1

    .line 1109
    .restart local v5       #dnsesDiffer:Z
    :cond_df
    const/4 v14, 0x0

    goto :goto_c4

    .line 1120
    .end local v1           #currentDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v3           #currentLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v4           #currentRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    .end local v5           #dnsesDiffer:Z
    .end local v7           #linkAddressesDiffer:Z
    .end local v9           #newDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v11           #newLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v12           #newRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    :pswitch_e1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1d

    .line 1121
    const/4 v6, 0x1

    goto/16 :goto_1d

    .line 1134
    :pswitch_f2
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v10

    .line 1135
    .local v10, newHttpProxy:Landroid/net/ProxyProperties;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    .line 1137
    .local v2, currentHttpProxy:Landroid/net/ProxyProperties;
    if-eqz v10, :cond_10f

    .line 1138
    invoke-virtual {v10, v2}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10d

    const/4 v13, 0x1

    :goto_10b
    goto/16 :goto_33

    :cond_10d
    const/4 v13, 0x0

    goto :goto_10b

    .line 1140
    :cond_10f
    if-eqz v2, :cond_114

    const/4 v13, 0x1

    .line 1142
    :goto_112
    goto/16 :goto_33

    .line 1140
    :cond_114
    const/4 v13, 0x0

    goto :goto_112

    .line 1144
    .end local v2           #currentHttpProxy:Landroid/net/ProxyProperties;
    .end local v10           #newHttpProxy:Landroid/net/ProxyProperties;
    :pswitch_116
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_33

    .line 1145
    const/4 v13, 0x1

    goto/16 :goto_33

    .line 1159
    :cond_127
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 1160
    move-object/from16 v0, p1

    invoke-static {v8, v0}, Landroid/net/wifi/WifiConfigStore;->addIpSettingsFromConfig(Landroid/net/LinkProperties;Landroid/net/wifi/WifiConfiguration;)V

    .line 1161
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IP config changed SSID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " linkProperties: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 1169
    :cond_160
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 1170
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 1171
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "proxy changed SSID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v15

    if-eqz v15, :cond_47

    .line 1173
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " proxyProperties: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_47

    .line 1093
    :pswitch_data_1b6
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_e1
        :pswitch_1d
    .end packed-switch

    .line 1132
    :pswitch_data_1c0
    .packed-switch 0x1
        :pswitch_f2
        :pswitch_116
        :pswitch_33
    .end packed-switch
.end method
